program DelphiUnitTests;

uses
  Vcl.Forms,
  FormMain_u in 'Forms\FormMain_u.pas' {FormMain},
  Utils in 'Units\Utils.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
