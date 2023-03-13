unit UAcesso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Mask, Vcl.DBCtrls, System.ImageList, Vcl.ImgList;

type
  TFrmAcesso = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnAcesso: TBitBtn;
    btnCancelar: TBitBtn;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    SpeedButton1: TSpeedButton;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnAcessoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  Tentativas : Integer;
  Texto : String;
  Usuario : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAcesso: TFrmAcesso;

implementation

{$R *.dfm}

uses UDmDados;

procedure TFrmAcesso.btnAcessoClick(Sender: TObject);
begin
  DmDados.SqlAcesso.Close;
  DmDados.SqlAcesso.ParamByName('Nome').AsString := edtUsuario.Text;
  DmDados.SqlAcesso.ParamByName('Senha').AsString := edtSenha.Text;
  DmDados.SqlAcesso.Open;
  if (DmDados.SqlAcesso.RecordCount > 0) then
  begin
    ShowMessage('Seja Bem Vindo ao Sistema' + (' ') + DmDados.SqlAcessoFUNC_NOME.Value);
    Usuario := edtUsuario.Text;
  end
  else
  begin
    ModalResult := mrNone;
    if (Tentativas = 1) then
    begin
      Inc (Tentativas);
       ShowMessage('Usuário ou Senha Inválidos');
    end
    else
    begin
      ShowMessage('Acesso ao Sistema Negado');
      Close;
    end;
  end;

end;

procedure TFrmAcesso.btnCancelarClick(Sender: TObject);
begin
   Close;
end;

procedure TFrmAcesso.FormShow(Sender: TObject);
begin
  edtUsuario.SetFocus;
  Tentativas := 1;
end;

end.
