unit uKeyboardHook;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, filemapping,
  keyboardunit, myauxproc, Sharemem, System.Generics.Collections;

type
  TLowLevelKeyboardHook = class
  private
    FHook: HHOOK;
    ExchangeDict: TDictionary<word, word>;
    function LowLevelKeyboardProc(nCode: Integer; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall;
    procedure SendVirtualKey(vk: Word; KeyDown: boolean);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Start;
    procedure Stop;
  end;
  KBDLLHOOKSTRUCT = packed record
  vkCode: DWORD;        // Виртуальный код клавиши (VK_CAPITAL, VK_CONTROL, VK_A и т.д.)
  scanCode: DWORD;      // Аппаратный скан-код клавиши
  flags: DWORD;         // Флаги (расширенная клавиша, injected, AltDown, Up и т.д.)
  time: DWORD;          // Время нажатия (в миллисекундах)
  dwExtraInfo: ULONG_PTR; // Дополнительная информация (обычно 0)
end;
 PKBDLLHOOKSTRUCT = ^KBDLLHOOKSTRUCT;
const
  LLKHF_EXTENDED = 1;
  LLKHF_UP = $80;
  LLKHF_ALTDOWN = $20;

implementation
uses  backgroundUnit;
var
  HookInstance: TLowLevelKeyboardHook = nil; // для доступа из callback


function KeyboardHookProc(nCode: Integer; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall;
begin
  if Assigned(HookInstance) then
    Result := HookInstance.LowLevelKeyboardProc(nCode, wParam, lParam)
  else
    Result := CallNextHookEx(0, nCode, wParam, lParam);
end;

{ TLowLevelKeyboardHook }

constructor TLowLevelKeyboardHook.Create;
begin
  HookInstance := Self;
  DataArea^.HandleKey := 0;
end;

destructor TLowLevelKeyboardHook.Destroy;
begin
  Stop;
  HookInstance := nil;
  inherited;
end;

procedure TLowLevelKeyboardHook.SendVirtualKey(vk: Word; KeyDown: boolean);
var
  Input: TInput;
begin
  FillChar(Input, SizeOf(Input), 0);
  Input.itype := INPUT_KEYBOARD;
  Input.ki.wVk := vk;
  Input.ki.dwFlags := IfThen(KeyDown, 0, KEYEVENTF_KEYUP);

  SendInput(1, @Input, SizeOf(TInput));
end;

procedure TLowLevelKeyboardHook.Start;
begin
  if DataArea^.HandleKey = 0 then
    DataArea^.HandleKey := SetWindowsHookEx(WH_KEYBOARD_LL, @KeyboardHookProc, HInstance, 0);
    ExchangeDict:=backform.settingform.buttonsDict;
end;

procedure TLowLevelKeyboardHook.Stop;
begin
  if DataArea^.HandleKey<>0 then
  begin
    UnhookWindowsHookEx(FHook);
    DataArea^.HandleKey:=0;
  end;
end;

function TLowLevelKeyboardHook.LowLevelKeyboardProc(nCode: Integer; wParam: WPARAM; lParam: LPARAM): LRESULT; stdcall;
var
  p: PKBDLLHOOKSTRUCT;
  press: boolean;
  pressBit: byte; codes:word;
  vcodeInstead: word;
begin
  Result := 0;

  if nCode = HC_ACTION then
  begin
    p := PKBDLLHOOKSTRUCT(lParam);
    //vkCode := p.vkCode;
    press:= (p.flags and LLKHF_UP) = 0;
    pressBit:=IfThen(press,1,0);

    pressBit:=IFThen((p.flags=1) or (p.flags=129),pressBit+2,pressBit);  //to pass RightEnter



    if ExchangeDict.TryGetValue(p.vkCode, vcodeInstead) then  //substitution
    begin
      sendVirtualKey(vcodeInstead, press);
      codes:=vcodeInstead shl 8 + p.scanCode;
      PostMessage(DataArea^.FormHandle, WM_MYKEYPRESS, codes, pressBit);
      result:=1; exit;
    end;

    codes:=p.vkCode shl 8 + p.scanCode;
    PostMessage(DataArea^.FormHandle, WM_MYKEYPRESS, codes, pressBit);  //wpar - scancode and virtcode

    if press then  // Нажатие
      if p.scanCode = DataArea^.key then
      if (p.flags and LLKHF_EXTENDED) = DataArea^.ExKey then

      begin
        sleep(400);
        SendMessage(DataArea^.FormHandle, WM_CHANGELANG, WParam, LParam);
        result:=1;
        exit;        //to not pass further
      end;
  //result:=CallNexthookEx(DataArea^.HandleKey, ncode, WParam, LParam);

  end;

  // Передаём дальше по цепочке
  Result := CallNextHookEx(DataArea^.HandleKey, nCode, wParam, lParam);
end;

end.
