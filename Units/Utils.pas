unit Utils;

interface

type
  TUtils = class
    class function UpperAndTrim(const aVal: string): string; static;
  end;

implementation

uses System.SysUtils;

class function TUtils.UpperAndTrim(const aVal: string): string;
begin
  Result := UpperCase(aVal.Trim);
end;

end.
