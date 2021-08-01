program Pix;

uses
  Vcl.Forms,
  UPIX in 'UPIX.pas' {Form1},
  UFunction_Pix in 'UFunction_Pix.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
