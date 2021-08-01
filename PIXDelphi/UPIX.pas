unit UPIX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtChave: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtBeneficiario: TEdit;
    Label3: TLabel;
    edtCidade: TEdit;
    Label4: TLabel;
    edtValor: TEdit;
    Button1: TButton;
    edtpayload: TEdit;
    Label5: TLabel;
    edtRef: TEdit;
    LabelPayLoad: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UFunction_Pix;

procedure TForm1.Button1Click(Sender: TObject);
begin
 edtPayLoad.Clear;
 edtPayLoad.Text := GeraPix(edtChave.Text, edtBeneficiario.Text, edtCidade.Text, edtRef.Text, edtValor.Text);
end;

end.
