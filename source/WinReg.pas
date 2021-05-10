unit WinReg;

interface

uses
  WinReg.Interfaces,
  System.Win.Registry;

type
  TWinReg = Class(TInterfacedObject, iWinReg)
  private
    FReg: TRegistry;
  public
    constructor Create;
    destructor Destroy; override;

    class function New : iWinReg;
    function OpenKey(aKey : String) : iWinReg;
    function WriteString(aKey, aValue : String) : iWinReg;
    function ReadString(aKey : String; var aValue : String) : iWinReg; overload;
    function ReadString(aKey : String) : String; overload;
  End;

implementation

{ TWinReg }

constructor TWinReg.Create;
begin
  FReg := TRegistry.Create;
end;

destructor TWinReg.Destroy;
begin
  FReg.Free;

  inherited;
end;

class function TWinReg.New: iWinReg;
begin
  Result := Self.Create;
end;

function TWinReg.OpenKey(aKey: String): iWinReg;
begin
  Result := Self;

  FReg.OpenKey(aKey, true);
end;

function TWinReg.ReadString(aKey: String): String;
begin
  Result := FReg.ReadString(aKey);
end;

function TWinReg.ReadString(aKey: String; var aValue: String): iWinReg;
begin
  Result := Self;

  aValue := FReg.ReadString(aKey);
end;

function TWinReg.WriteString(aKey, aValue: String): iWinReg;
begin
  Result := Self;

  FReg.WriteString(aKey, aValue);
end;

end.
