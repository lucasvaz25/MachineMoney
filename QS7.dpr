program QS7;

uses
  Vcl.Forms,
  ufrm_main in 'ufrm_main.pas' {frm_main},
  uIMaquina in 'uIMaquina.pas',
  uMaquina in 'uMaquina.pas',
  uTroco in 'uTroco.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_main, frm_main);
  Application.Run;
end.
