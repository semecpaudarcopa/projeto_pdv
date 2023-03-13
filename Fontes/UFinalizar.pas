unit UFinalizar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Buttons;

type
  TFrmFinalizar = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BtnCalcular: TBitBtn;
    BtnImprimir: TBitBtn;
    BtnCancelar: TBitBtn;
    procedure BtnCancelarClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BtnCalcularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFinalizar: TFrmFinalizar;

implementation

{$R *.dfm}

uses UDmDados, UFormas, UPdv;

procedure TFrmFinalizar.BtnCalcularClick(Sender: TObject);
begin
  DmDados.TabVendasVEN_TROCO.Value :=
  DmDados.TabVendasVEN_PAGAMENTOS.Value -
  DmDados.TabVendasVEN_TOTAL_VENDA.Value;
  begin
    try
       Application.CreateForm(TFrmFormas,FrmFormas);
       FrmFormas.ShowModal;
    finally
      FreeAndNil(FrmFormas);
    end;
  end;
end;

procedure TFrmFinalizar.BtnCancelarClick(Sender: TObject);
var Senha : String [6];
begin
  Senha := InputBox('Codigo', #31 + 'Digite a Senha para Cancelar', '');
  if (Senha <> 'MASTER') and (Senha <> 'master') then
  ShowMessage('Senha Incorreta')
  else
  begin
    with DmDados.SqlCarrinhos do
    begin
      Close;
      Open;
      if RecordCount > 0 then
      begin
        First;
        while not DmDados.SqlCarrinhos.Eof do
        begin
          with DmDados.SqlEstoque do

              begin
                Close;
                SQL.Clear;
                SQL.Add('Update Tab_Produto set PROD_QTDE_ESTOQUE = PROD_QTDE_ESTOQUE + :Qtd');
                SQL.Add('Where PROD_ID = :Codigo');
                ParamByName('Qtd').Value := DmDados.SqlCarrinhosCAR_QTDE.Value;
                ParamByName('Codigo').Value := DmDados.SqlCarrinhosCAR_PRODUTOS.Value;

                ExecSQL;
              end;
              Next;
        end;
        with DmDados.SqlCarrinhos do
        begin
          Close;
              SQL.Clear;
              SQL.Add('Delete From Tab_Carrinhos');
              ExecSQL;
        end;

      end;

    end;
    DmDados.TabVendas.Cancel;
    DmDados.Transaction.CommitRetaining;
    DmDados.TabEntradas.Cancel;
    DmDados.Transaction.CommitRetaining;
    FrmPdv.EditCodigoBarra.Enabled := False;
    FrmPdv.PanelDescricao.Caption := 'Caixa Aberto - Aguardando Clientes';
    FrmPdv.PanelCaixa.Caption := 'Tecle F2 para uma Nova Venda';
    Close;
  end;
end;

procedure TFrmFinalizar.BtnImprimirClick(Sender: TObject);
begin

  DmDados.ReportCarrinhos.PrintReport;

  DmDados.TabVendas.Post;
  DmDados.Transaction.CommitRetaining;

   DmDados.TabEntradas.Post;
   DmDados.Transaction.CommitRetaining;


    begin
      with DmDados.SqlCarrinhos do
      begin
        Close;
        SQL.Clear;
        Sql.Add('Delete From Tab_carrinhos');
        ExecSQL;
      end;
      FrmPdv.EditCodigoBarra.Enabled := False;
      Close;
    end;


  Close;
end;

procedure TFrmFinalizar.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if DBEdit2.Text = '' then
    ShowMessage('Informe o Valor de Pagamento')
    else
    begin
       BtnCalcular.SetFocus;
    end;
  end;
end;

procedure TFrmFinalizar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmPdv.EditCodigoBarra.Enabled := False;
  FrmPdv.PanelDescricao.Caption := 'Caixa Aberto - Aguardando Clientes';
  FrmPdv.PanelCaixa.Caption := 'Tecle F2 para uma Nova Venda';
end;

procedure TFrmFinalizar.FormCreate(Sender: TObject);
begin
  BtnImprimir.Enabled := False;
  DmDados.TabEntradas.Open;
  DmDados.TabEntradas.Last;
  DmDados.TabEntradas.Insert;
  DmDados.TabEntradasENT_DATA_ENTRADA.Value := DmDados.TabVendasVEN_DATA_VENDA.Value;
  DmDados.TabEntradasENT_HORA_ENTRADA.Value := DmDados.TabVendasVEN_HORA_VENDA.Value;
  DmDados.TabEntradasENT_VALOR_ENTRADA.Value := DmDados.TabVendasVEN_TOTAL_VENDA.Value;
end;

end.
