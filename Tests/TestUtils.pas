unit TestUtils;

interface

uses
  TestFramework, Utils;

type
  TestTUtils = class(TTestCase)
  strict private
    FUtils: TUtils;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestUpperAndTrim;
  end;

implementation

procedure TestTUtils.SetUp;
begin
  FUtils := TUtils.Create;
end;

procedure TestTUtils.TearDown;
begin
  FUtils.Free;
  FUtils := nil;
end;

procedure TestTUtils.TestUpperAndTrim;
var
  ReturnValue: string;
  aVal: string;
begin
  // TODO: Setup method call parameters
  ReturnValue := FUtils.UpperAndTrim(aVal);
  // TODO: Validate method results

  CheckEquals('HELLO WORLD', TUtils.UpperAndTrim(' hello worLD   '));
  CheckEquals('HELLO', TUtils.UpperAndTrim(' hello    '));
  CheckNotEquals('HELLO WORLD', TUtils.UpperAndTrim(''));

  CheckEquals('hello world',TUtils.UpperAndTrim('hello world')); // this will fail
end;

initialization
  // Register any test cases with the test runner
  RegisterTest(TestTUtils.Suite);
end.

