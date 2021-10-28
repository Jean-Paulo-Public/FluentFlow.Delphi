program Project.FluentFlow.Delphi;

uses
  Vcl.Forms,
  View.Main in '..\Source\View\Default forms\View.Main.pas' {FormMain},
  Model.Core in '..\Source\Controler\Model.Core.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
