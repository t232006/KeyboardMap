unit uKeyRemapper;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes;

type
  TKeyRemap = record
    FromKey: DWORD;   // исходная клавиша (VK_xxx)
    ToKey: DWORD;     // клавиша, которую хотим эмулировать
  end;
  tagKBDLLHOOKSTRUCT = packed record
    vkCode      : DWORD;      // Виртуальный код клавиши (VK_xxx)
    scanCode    : DWORD;      // Скан-код
    flags       : DWORD;      // Флаги (extended, injected, AltDown и т.д.)
    time        : DWORD;      // Время события
    dwExtraInfo : ULONG_PTR;  // Дополнительная информация
  end;

  TKeyRemapper = class
  private
    FHook: HHOOK;
    FRemaps: TArray<TKeyRemap>;
    function LowLevelKeyboardProc(nCode: Integer; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall;
    procedure SendKey(VK: DWORD; Down: Boolean);
  public
    constructor Create;
    destructor Destroy; override;

    procedure AddRemap(FromVK, ToVK: DWORD);
    procedure ClearRemaps;
    procedure Start;
    procedure Stop;

  end;

implementation

var
  GlobalRemapper: TKeyRemapper = nil;
  KBDLLHOOKSTRUCT  = tagKBDLLHOOKSTRUCT;
  PKBDLLHOOKSTRUCT = ^KBDLLHOOKSTRUCT;

function KeyboardHookCallback(nCode: Integer; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall;
begin
  if Assigned(GlobalRemapper) then
    Result := GlobalRemapper.LowLevelKeyboardProc(nCode, wParam, lParam)
  else
    Result := CallNextHookEx(0, nCode, wParam, lParam);
end;

{ TKeyRemapper }

constructor TKeyRemapper.Create;
begin
  GlobalRemapper := Self;
  FHook := 0;
  SetLength(FRemaps, 0);
end;

destructor TKeyRemapper.Destroy;
begin
  Stop;
  GlobalRemapper := nil;
  inherited;
end;

procedure TKeyRemapper.AddRemap(FromVK, ToVK: DWORD);
var
  R: TKeyRemap;
begin
  R.FromKey := FromVK;
  R.ToKey := ToVK;
  FRemaps := FRemaps + [R];
end;

procedure TKeyRemapper.ClearRemaps;
begin
  SetLength(FRemaps, 0);
end;

procedure TKeyRemapper.Start;
begin
  if FHook = 0 then
    FHook := SetWindowsHookEx(WH_KEYBOARD_LL, @KeyboardHookCallback, HInstance, 0);
end;

procedure TKeyRemapper.Stop;
begin
  if FHook <> 0 then
  begin
    UnhookWindowsHookEx(FHook);
    FHook := 0;
  end;
end;

procedure TKeyRemapper.SendKey(VK: DWORD; Down: Boolean);
var
  Input: TInput;
begin
  FillChar(Input, SizeOf(Input), 0);
  Input.Itype := INPUT_KEYBOARD;
  Input.ki.wVk := VK;
  if not Down then
    Input.ki.dwFlags := KEYEVENTF_KEYUP;

  SendInput(1, Input, SizeOf(Input));
end;

function TKeyRemapper.LowLevelKeyboardProc(nCode: Integer; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall;
var
  p: PKBDLLHOOKSTRUCT;
  i: Integer;
  vk: DWORD;
  IsDown: Boolean;
begin
  Result := 0;

  if nCode <> HC_ACTION then
  begin
    Result := CallNextHookEx(FHook, nCode, wParam, lParam);
    Exit;
  end;

  p := PKBDLLHOOKSTRUCT(lParam);
  vk := p.vkCode;
  IsDown := (wParam = WM_KEYDOWN) or (wParam = WM_SYSKEYDOWN);

  // Ищем, нужно ли ремэпить эту клавишу
  for i := Low(FRemaps) to High(FRemaps) do
    if FRemaps[i].FromKey = vk then
    begin
      // Блокируем оригинальную клавишу
      if IsDown then
        SendKey(FRemaps[i].ToKey, True)
      else
        SendKey(FRemaps[i].ToKey, False);

      Result := 1; // съедаем событие
      Exit;
    end;

  // Если не нашли — пропускаем дальше
  Result := CallNextHookEx(FHook, nCode, wParam, lParam);
end;

end.
