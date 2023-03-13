unit UPdv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils,
   System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
   Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.Imaging.jpeg,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrmPdv = class(TForm)
    PanelDescricao: TPanel;
    PanelCaixa: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    LabelNumeroNota: TLabel;
    FotosProdutos: TImage;
    EditCodigos: TEdit;
    EditDigitos: TEdit;
    DBGrid: TDBGrid;
    Panel3: TPanel;
    EditCodigoBarra: TEdit;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label2: TLabel;
    EditQtde: TEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label1: TLabel;
    pnlDataHora: TPanel;
    DBText3: TDBText;
    Label9: TLabel;
    LabelConsumidor: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label8: TLabel;
    Label5: TLabel;
    pnlImagem: TPanel;
    pnlPnlImagem: TPanel;
    pnlGrid: TPanel;
    procedure FormCreate(Sender: TObject);

    procedure FormShow(Sender: TObject);
    procedure NovaVenda;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EditCodigoBarraKeyPress(Sender: TObject; var Key: Char);
    procedure EditCodigosChange(Sender: TObject);
    procedure GerarNumeroNota;
    procedure ProdutosAdd;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AlterarQuantidade;
    procedure RemoverProdutos;
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    
  private
  var Senha : string [6];
    { Private declarations }
  public
  TAM : Integer;
  Codigos,Digitos:String;
  PRO,QTDE : Integer;
  TotalNota : Double;
  Quantidade : integer;
  texto : string;
    { Public declarations }
  end;

var
  FrmPdv: TFrmPdv;

implementation

{$R *.dfm}

uses UDmDados, U_funcoes, UConsultas, UFinalizar, UFormas, UPagamentos,
  UFechamento;





procedure TFrmPdv.AlterarQuantidade;
  begin
    Quantidade := StrToInt(InputBox('Alterar Qtde', 'Digite a Qtde', '1'));
    EditQtde.Text := IntToStr(Quantidade);
  end;

procedure TFrmPdv.EditCodigoBarraKeyPress(Sender: TObject; var Key: Char);
  begin
     if key = #13 then
    begin
    with DmDados.SqlConsultas do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Select*From Tab_Produto');
        SQL.Add('where PROD_CODIGO_BARRA Like :Codigos');
        ParamByName('Codigos').Value := EditCodigoBarra.Text;
        Open;
        if RecordCount > 0 then
          begin
            ProdutosAdd;
            DmDados.Transaction.CommitRetaining;
            PanelDescricao.Caption := DmDados.SqlConsultasPROD_PRODUTOS.Value;
            FotosProdutos.Picture.LoadFromFile(DmDados.SqlConsultasPROD_FOTOS.Value);
          end
          else
            ShowMessage('Produto não Cadastrado');

      end;
    EditCodigoBarra.Clear;
    EditCodigoBarra.SetFocus;
    end;
  end;

procedure TFrmPdv.EditCodigosChange(Sender: TObject);
  begin
    Tam := Length(EditCodigos.Text);
      if TAM = 12 then
      begin
        Codigos := EditCodigos.Text;
        Digitos := Codigos;
        Codigos := Codigos + EAN13(Digitos);
        LabelNumeroNota.Caption := Codigos;
        EditDigitos.Text :=  EAN13(Digitos);

      end;
  end;

procedure TFrmPdv.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
     with DmDados.SqlCarrinhos do
      begin
        Close;
        Open;
        if RecordCount > 0 then
          begin
            First;
            while not DmDados.SqlCarrinhos.Eof do
            //aqui começa
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
            DmDados.TabVendas.Close;
      end;
      end;
      try
     Application.CreateForm(TFrmFechamento,FrmFechamento);
     FrmFechamento.ShowModal;
  finally
     FreeAndNil(FrmFechamento);

  end;
  end;

procedure TFrmPdv.FormCreate(Sender: TObject);
  begin
    DmDados.TabVendas.Open;
    DmDados.TabVendas.Last;
    EditCodigoBarra.Enabled := False;
    EditQtde.Text := '1';
  end;

procedure TFrmPdv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  begin
    if key = VK_F2 then
  if EditCodigoBarra.Enabled = True then
  ShowMessage('Venda já Iniciada')
    else
    begin
      NovaVenda;
    end
    else
    begin
      if Key = VK_F5 then
      if EditCodigoBarra.Enabled = False then
      ShowMessage('Inicie uma Venda Antes')
      else
      begin
        AlterarQuantidade;
      end
      else
      begin
        if Key = VK_F7 then
        begin
          if DmDados.SqlCarrinhos.RecordCount < 1 then
           ShowMessage('Não hà Produtos no Pdv')

        else
          begin
            Senha := InputBox('Codigo', #31 + 'Digite a Senha para Excluir', '');
            if (Senha <> 'MASTER') and (Senha <> 'master') then
            ShowMessage('Senha Incorreta')
            else
            begin
              RemoverProdutos;
            end;
          end;
        end
        else
        begin
          if Key = VK_F8 then
          begin
            try
               Application.CreateForm(TFrmConsultas,FrmConsultas);
               FrmConsultas.ShowModal;
            finally
              FreeAndNil(FrmConsultas);
            end;
          end
          else
          begin
            if Key = VK_F12 then
            if DmDados.SqlCarrinhos.RecordCount < 1 then
             ShowMessage('Não há Produtos no Pdv')
             else
             begin
                try
                   Application.CreateForm(TFrmFinalizar,FrmFinalizar);
                   FrmFinalizar.ShowModal;
                finally
                  FreeAndNil(FrmFinalizar);
                end;
             end;

          end;
        end;
      end;
    end;

  end;

procedure TFrmPdv.FormKeyPress(Sender: TObject; var Key: Char);
  begin
      if Key = #27 then
  if DmDados.SqlCarrinhos.RecordCount > 0 then
  ShowMessage('Finalize ou Cancele a Venda antes')
  else
    begin
      Senha := InputBox('Codigo', #31 + 'Digite a Senha para Sair', '');
      if (Senha <> 'MASTER') and (Senha <> 'master') then
      ShowMessage('Senha Incorreta')
      else
      begin
        Close;
      end;
    end;
  end;

procedure TFrmPdv.FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  begin
     if Key = VK_F11 then
  begin

    try
       Application.CreateForm(TFrmPagamentos, FrmPagamentos);
       FrmPagamentos.ShowModal;
    finally
       FreeAndNil(FrmPagamentos);
    end;
  end;
  end;

procedure TFrmPdv.FormShow(Sender: TObject);
  begin
    PanelDescricao.Caption := 'Caixa Aberto - Aguardando Clientes';
    PanelCaixa.Caption := 'Tecle F2 para uma Nova Venda';
    LabelConsumidor.Caption := '';
    FotosProdutos.Picture.LoadFromFile(DmDados.TabLogosLOGOS_IMGS.Value);
  end;

procedure TFrmPdv.GerarNumeroNota;
  begin
     EditCodigos.Text := FormatDateTime('yymmdd',Date)+FormatDateTime('hhmmss',Time);
  end;

procedure TFrmPdv.NovaVenda;
  begin
    GerarNumeroNota;
    DmDados.TabVendas.Insert;
    DmDados.TabVendasVEN_NUMERO_NOTA.Value := Codigos;
    DmDados.TabVendasVEN_DATA_VENDA.Value := Date;
    DmDados.TabVendasVEN_HORA_VENDA.Value := Time;
    DmDados.TabVendasFUNC_ID.Value := DmDados.SqlAcessoFUNC_ID.Value;
    DmDados.TabVendasCLI_ID.Value := 1;
    EditCodigoBarra.Enabled := true;
    EditCodigoBarra.SetFocus;
    LabelConsumidor.Caption := 'Consumidor';
    PanelDescricao.Caption := 'Venda Iniciada - Inserindo Produtos';
    PanelCaixa.Caption := 'F5 Alterar Qtde - F7 Excluir Produtos - F8 Consultar Produtos - F11 Pagamentos - F12 Finalizar';
  end;

procedure TFrmPdv.ProdutosAdd;
  begin
      PRO := DmDados.SqlConsultasPROD_ID.Value;
    QTDE := StrToInt(EditQtde.Text);
  //  ///////////////
      with DmDados.SqlCarrinhos do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Select * FROM Tab_Carrinhos C, Tab_Produto P');
      SQL.Add('Where C.CAR_PRODUTOS = P.PROD_ID');
      SQL.Add('and C.CAR_PRODUTOS = :Produto');
      ParamByName('Produto').Value := PRO;
      Open;
  //
    end;




    //////////////
    if DmDados.SqlCarrinhos.RecordCount = 0 then
    begin
    with DmDados.SqlProdutosAdd do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Insert into Tab_Carrinhos');
        SQL.Add('(CAR_PRODUTOS, CAR_QTDE)');
        SQL.Add('Values (:Produto, :Qtd)');
        ParamByName('Produto').Value := PRO;
        ParamByName('Qtd').Value := QTDE;
        ExecSQL;
      end;


     // DmDados.SqlCarrinhos.Close;
     // DmDados.SqlCarrinhos.Open;
    end
    else
    begin
        with DmDados.SqlProdutosAdd do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Update Tab_Carrinhos set CAR_QTDE = CAR_QTDE + :Qtd');
        SQL.Add('Where CAR_PRODUTOS = :Produto');
        ParamByName('Produto').Value := PRO;
        ParamByName('Qtd').Value := QTDE;
        ExecSQL;
      end;
    end;
      //Remove do estoque
    with DmDados.SqlEstoque do
    begin
      Close;
      SQL.Clear;
      SQL.Add('Update Tab_Produto set PROD_QTDE_ESTOQUE = PROD_QTDE_ESTOQUE - :Qtd');
      SQL.Add('Where PROD_ID = :Codigo');
      ParamByName('Codigo').Value := PRO;
      ParamByName('Qtd').Value := QTDE;
      ExecSQL;
    end;
    ////////////////////////

    with DmDados.SqlCarrinhos do
    begin
       Close;
      SQL.Clear;
      SQL.Add('Select * FROM Tab_Carrinhos C, Tab_Produto P');
      SQL.Add('Where C.CAR_PRODUTOS = P.PROD_ID');
      Open;
    end;
      EditQtde.Text := '1';

     //Somar total da nota
      DmDados.SqlCarrinhos.First;
      TotalNota := 0;
      while not DmDados.SqlCarrinhos.Eof do
      begin
        TotalNota := TotalNota + DmDados.SqlCarrinhosCAR_SUBTOTAL.Value;
        DmDados.SqlCarrinhos.Next;
      end;
  //
      DmDados.TabVendasVEN_TOTAL_VENDA.Value := TotalNota;

    end;
       // REMOVER PRODUTOS
procedure TFrmPdv.RemoverProdutos;
  begin
    PRO := DmDados.SqlCarrinhosCAR_PRODUTOS.Value;
    QTDE := StrToInt(InputBox('Remover Produto', 'Digite a Qtde', '1'));

    begin
    if QTDE > DmDados.SqlCarrinhosCAR_QTDE.Value then
       begin
         QTDE := DmDados.SqlCarrinhosCAR_QTDE.Value;
       end;
       //


    with DmDados.SqlProdutosAdd do
    begin
      Close;
      SQL.Clear;
       SQL.Add('Update Tab_Carrinhos set CAR_QTDE = CAR_QTDE - :Qtd');
        SQL.Add('Where CAR_PRODUTOS = :Produto');
         ParamByName('Produto').Value := PRO;
          ParamByName('Qtd').Value := QTDE;
           ExecSQL;
      //


    with DmDados.SqlEstoque do
    begin
      Close;
       SQL.Clear;
        SQL.Add('Update TAB_PRODUTO set PROD_QTDE_ESTOQUE = PROD_QTDE_ESTOQUE + :Qtd');
         SQL.Add('Where PROD_ID = :Codigo');
          ParamByName('Codigo').Value := PRO;
           ParamByName('Qtd').Value := QTDE;
            ExecSQL;
    end;
    Close;
      SQL.Clear;
       SQL.Add('Delete From Tab_Carrinhos');
        SQL.Add('Where CAR_QTDE = 0');
         ExecSQL;
      DmDados.SqlCarrinhos.Close;
      DmDados.SqlCarrinhos.Open;
      EditCodigoBarra.SetFocus;
      DmDados.Transaction.CommitRetaining;
  end;
  end;
    //Atualiza total da nota
      DmDados.SqlCarrinhos.First;
      TotalNota := 0;
      while not DmDados.SqlCarrinhos.Eof do
      begin
        TotalNota := TotalNota + DmDados.SqlCarrinhosCAR_SUBTOTAL.Value;
        DmDados.SqlCarrinhos.Next;
      end;
  //
      DmDados.TabVendasVEN_TOTAL_VENDA.Value := TotalNota;
  end;

end.
