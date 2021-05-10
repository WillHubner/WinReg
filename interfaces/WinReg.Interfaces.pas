unit WinReg.Interfaces;

interface

type
  iWinReg = Interface
    ['{A9C80EA9-0A30-4C13-84A2-65FB93C5ACBD}']
    function OpenKey(aKey : String) : iWinReg;
    function WriteString(aKey, aValue : String) : iWinReg; overload;
    function WriteString(aKey : String; aValue : Integer) : iWinReg; overload;
    function ReadString(aKey : String; var aValue : String) : iWinReg; overload;
    function ReadString(aKey : String) : String; overload;
  End;

implementation

end.
