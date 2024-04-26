unit FileMapping;

interface
uses Windows, Messages;
type
PHookInfo = ^THookInfo;
THookInfo = packed record
    FormHandle: THandle;
    HandleKey: THandle;
    key: byte;
    ExKey: byte;
end;

var
DataArea: PHookInfo = NIL;
hMapArea: THandle = 0;
//MyKeyPress, ChangeLang: integer;

implementation
initialization
hMapArea := CreateFileMapping($FFFFFFFF, NIL, PAGE_READWRITE, 0,
            SizeOf(DataArea), 'KeyboardMap');
DataArea := MapViewOfFile(hMapArea, FILE_MAP_ALL_ACCESS, 0, 0, 0);
//MyKeyPress:=RegisterWindowMessage('{A1AAF6F8-EE76-46E6-B7E8-77FA327B2F3A}');
//ChangeLang:=RegisterWindowMessage('{E85D2892-ECDD-4693-AEE1-97B00CFF9C11}');
finalization
if Assigned(DataArea) then UnmapViewOfFile(DataArea);
if hMapArea<> 0 then CloseHandle(hMapArea);


end.
