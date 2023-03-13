unit UPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons;

type
  TFrmPagamentos = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    BtnSalvar: TBitBtn;
    BtnCancelar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure BtnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPagamentos: TFrmPagamentos;

implementation

{$R *.dfm}

uses UDmDados;

procedure TFrmPagamentos.BtnCancelarClick(Sender: TObject);
begin
  DmDados.TabPagamentos.Cancel;
  Close;
end;

procedure TFrmPagamentos.BtnSalvarClick(Sender: TObject);
begin
  DmDados.TabPagamentos.Post;
  DmDados.Transaction.CommitRetaining;
  Close;
end;

procedure TFrmPagamentos.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  if DBEdit3.Text = '' then
  ShowMessage('Campo Valor de Pagamento/Saida não pode ser Vazio')
  else
  begin
     DBEdit4.Enabled := True;
     DBEdit4.SetFocus;
  end;

end;

procedure TFrmPagamentos.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  if DBEdit4.Text = '' then
  ShowMessage('Campo Motivo de Pagamento/Saida não pode ser Vazio')
  else
  begin
     BtnSalvar.Enabled := True;
     BtnSalvar.SetFocus;
  end;
end;

procedure TFrmPagamentos.FormCreate(Sender: TObject);
begin
  DmDados.TabPagamentos.Open;
  DmDados.TabPagamentos.Last;
  DmDados.TabPagamentos.Insert;
  DmDados.TabPagamentosPAG_DATA_PAGAMENTOS.Value := Date;
  DmDados.TabPagamentosPAG_HORA_PAGAMENTOS.Value := Time;
  DBEdit4.Enabled := False;
  BtnSalvar.Enabled := False;
end;

end.
