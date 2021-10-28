unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFormMain = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses Model.Core;

procedure TFormMain.Button1Click(Sender: TObject);
begin
  TFluentFlow.New.CallBack[
    procedure (this: TFluentFlow)
    begin
      ShowMessage('Hello world!');
    end
  ].Free;
end;

end.
