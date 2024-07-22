unit interfaceMyFrame;

interface
uses VCL.Forms, registry;

type IMyFrame = interface
   //reg: TRegIniFile;
   procedure Applay;
   procedure LoadParams;
   procedure SaveParams;
end;

implementation

end.
