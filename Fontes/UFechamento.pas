unit UFechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmFechamento = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    btnCalcular: TBitBtn;
    btnFechar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFechamento: TFrmFechamento;

implementation

{$R *.dfm}

uses UDmDados;

procedure TFrmFechamento.btnCalcularClick(Sender: TObject);
Var  TotalNota : Double;
begin
   //Somar total de Pagamentos
      DmDados.TabPagamentos.First;
      TotalNota := 0;
      while not DmDados.TabPagamentos.Eof do
      begin
        TotalNota := TotalNota + DmDados.TabPagamentosPAG_VALOR_PAGAMENTOS.Value;
        DmDados.TabPagamentos.Next;
      end;
  //
      DmDados.TabCaixasCAIX_TOTAL_PAGAMENTOS.Value := TotalNota;

      /////////////////////////

      //Somar total de Vendas
      DmDados.TabEntradas.First;
      TotalNota := 0;
      while not DmDados.TabEntradas.Eof do
      begin
        TotalNota := TotalNota + DmDados.TabEntradasENT_VALOR_ENTRADA.Value;
        DmDados.TabEntradas.Next;
      end;
  //
      DmDados.TabCaixasCAIX_TOTAL_ENTRADAS.Value := TotalNota;
      //////////////////////////

      DmDados.TabCaixasCAIX_TOTAL_FATURAMENTO.Value :=
      DmDados.TabCaixasCAIX_TOTAL_ENTRADAS.Value   -
      DmDados.TabCaixasCAIX_TOTAL_PAGAMENTOS.Value;

     //////////////////////////////////
     DmDados.TabCaixasCAIX_HORA_FECHAMENTO.Value := Time;

  btnFechar.Enabled := True;
end;

procedure TFrmFechamento.btnFecharClick(Sender: TObject);
begin
  DmDados.TabCaixas.Post;
  DmDados.Transaction.CommitRetaining;
  Close;
end;

procedure TFrmFechamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDados.ReportEntradas.PrintReport;
  DmDados.ReportPagamentos.PrintReport;

  With DmDados.SqlPagamentos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Delete From Tab_Pagamentos');
    ExecSQL;
  end;

   With DmDados.SqlEntradas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Delete From Tab_Entrada');
    ExecSQL;
  end;

  DmDados.Transaction.CommitRetaining;

  DmDados.TabPagamentos.Close;
  DmDados.TabEntradas.Close;
end;

procedure TFrmFechamento.FormCreate(Sender: TObject);
begin
  DmDados.TabPagamentos.Open;
  DmDados.TabEntradas.Open;
  btnFechar.Enabled := False;
end;

end.
