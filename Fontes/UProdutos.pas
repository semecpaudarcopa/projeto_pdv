unit UProdutos;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Vcl.DBCtrls,
  Vcl.Buttons,
  Vcl.WinXPanels,
  Vcl.ExtDlgs,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Mask;

type
  TFrmProdutos = class(TForm)
    pnlTopo: TPanel;
    pnlPesquisa: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    CardPanel: TCardPanel;
    CardConsultas: TCard;
    CardCadastros: TCard;
    pnlBotoes: TPanel;
    btnInserir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    DBNavigator: TDBNavigator;
    FotosProdutos: TImage;
    AbreFotos: TOpenPictureDialog;
    Panel1: TPanel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnFotos: TBitBtn;
    DBGrid: TDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    pnlPesquisaNome: TPanel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    btnCalcularLucro: TBitBtn;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    EditCodigos: TEdit;
    Label10: TLabel;
    btnGeraCodigo: TBitBtn;
    EditDigitos: TEdit;
    Label11: TLabel;
    DBEdit20: TDBEdit;
    Label22: TLabel;
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridTitleClick(Column: TColumn);
    procedure btnFotosClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure DBGridCellClick(Column: TColumn);
    procedure DBGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBNavigatorClick(Sender: TObject; Button: TNavigateBtn);
    procedure EditCodigosChange(Sender: TObject);
    procedure btnGeraCodigoClick(Sender: TObject);
    procedure btnCalcularLucroClick(Sender: TObject);


  private
    { Private declarations }
  public
   texto : string;
   TAM : Integer;
   Codigos,Digitos:String;

    { Public declarations }
  end;

var
  FrmProdutos: TFrmProdutos;

implementation

{$R *.dfm}

uses UDmDados, U_funcoes;

procedure TFrmProdutos.btnAlterarClick(Sender: TObject);
  begin
    DmDados.TabProdutos.Edit;
    CardPanel.ActiveCard := CardCadastros;
    DBEdit1.SetFocus;
  end;

procedure TFrmProdutos.btnCalcularLucroClick(Sender: TObject);
  begin
    DmDados.TabProdutosPROD_VALOR_VENDA.Value :=
    DmDados.TabProdutosPROD_VALOR_CUSTO.Value *
    DmDados.TabProdutosPROD_LUCRO.Value /100 +
    DmDados.TabProdutosPROD_VALOR_CUSTO.Value;
  end;

procedure TFrmProdutos.btnCancelarClick(Sender: TObject);
  begin
     DmDados.TabProdutos.Cancel;
     DmDados.TabProdutos.Last;
     FotosProdutos.Picture.LoadFromFile(DmDados.TabProdutosPROD_FOTOS.Value);
     CardPanel.ActiveCard := CardConsultas;
     DBGrid.SetFocus;
  end;

procedure TFrmProdutos.btnExcluirClick(Sender: TObject);
  begin
    if DmDados.TabProdutosPROD_ID.Value = 1  then
    ShowMessage('Registro Protegido do Sistema')
  else
   if MessageDlg('Deseja Excluir o Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then

    DmDados.TabProdutos.Delete;
    DmDados.TabProdutos.Last;
  end;

procedure TFrmProdutos.btnFotosClick(Sender: TObject);
begin
   if AbreFotos.Execute then
  begin
      DmDados.TabProdutos.Edit;
      FotosProdutos.Picture.LoadFromFile(AbreFotos.FileName);
      DmDados.TabProdutosPROD_FOTOS.Value := AbreFotos.FileName;
  end;
end;

procedure TFrmProdutos.btnGeraCodigoClick(Sender: TObject);
  begin
     EditCodigos.Text := FormatDateTime('yymmdd',Date)+FormatDateTime('hhmmss',Time);
  end;

procedure TFrmProdutos.btnInserirClick(Sender: TObject);
  begin
    DmDados.TabProdutos.Insert;
    DmDados.TabProdutosPROD_FOTOS.Value := 'C:\Projeto_Pdv\Imagens\SemFotos.jpg';
    FotosProdutos.Picture.LoadFromFile(DmDados.TabProdutosPROD_FOTOS.Value);
    CardPanel.ActiveCard := CardCadastros;
    DBEdit1.SetFocus;
  end;

procedure TFrmProdutos.btnSalvarClick(Sender: TObject);
  begin
     if DBEdit1.Text = ''  then
      ShowMessage('Campo CPF não pode ser vazio')
      else

      begin
      if DBEdit1.Text = ''  then
      ShowMessage('Campo Código de Barras não pode ser vazio')
      else
            begin
            if DBEdit2.Text = ''  then
            ShowMessage('Campo Produto não pode ser vazio')
            else

            begin
            if DBEdit4.Text = ''  then
            ShowMessage('Campo Valor de Custo não pode ser vazio')
            else

                begin
                if DBEdit5.Text = ''  then
                ShowMessage('Campo Lucro não pode ser vazio')
                else
                begin
                if DBEdit6.Text = ''  then
                ShowMessage('Campo Valor de Venda não pode ser vazio')
                else


                  begin


                  DmDados.TabProdutos.Post;
                  DmDados.Transaction.CommitRetaining;
                  DmDados.TabProdutos.Last;
                  FotosProdutos.Picture.LoadFromFile(DmDados.TabProdutosPROD_FOTOS.Value);
                  CardPanel.ActiveCard := CardConsultas;
                  MessageDlg('Dados salvo com sucesso!',mtInformation,[mbOk],0);
                  DBGrid.SetFocus;
                  end;
                end;
              end;
            end;
        end;
      end;



  end;


procedure TFrmProdutos.DBGridCellClick(Column: TColumn);
begin
  FotosProdutos.Picture.LoadFromFile(DmDados.TabProdutosPROD_FOTOS.Value);
end;

procedure TFrmProdutos.DBGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  {alterando a cor da linha atual selecionada}
if (gdSelected in State) or (gdFocused in State) then
    TDBGrid(Sender).Canvas.Brush.Color:=clTeal
    else TDBGrid(Sender).Canvas.Brush.Color:=clWindow;

{alterando a cor de fundo da coluna “VALOR”}
if DataCol=12 then
TDBGrid(Sender).Canvas.Brush.Color:=clAqua;

{atualizando a visualização do DBGrid}
DBGrid.Canvas.FillRect(Rect);
TDBGrid(Sender).DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;


procedure TFrmProdutos.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FotosProdutos.Picture.LoadFromFile(DmDados.TabProdutosPROD_FOTOS.Value);
end;

procedure TFrmProdutos.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
  begin
    if Texto > '' then
    begin
      DmDados.TabProdutos.Locate('PROD_CODIGO_BARRA', Texto, [locaseinsensitive,loPartialKey]);
      Texto := '';
      pnlPesquisa.Caption := Texto;

    end
    else
    btnAlterar.Click;
  end
  else
  if key = #8 then
  begin
    Texto := Copy(Texto,1, Length (Texto) -1);
    pnlPesquisa.Caption := Texto;
  end
  else
  begin
    Texto := Texto + Key;
    pnlPesquisa.Caption := Texto;
  end;
end;

procedure TFrmProdutos.DBGridKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   FotosProdutos.Picture.LoadFromFile(DmDados.TabProdutosPROD_FOTOS.Value);
end;

procedure TFrmProdutos.DBGridTitleClick(Column: TColumn);
  var
    I : integer;

    begin
      for i:=0 to DBGrid.Columns.count-1 do
      begin
        DBGrid.Columns[i].Title.Color := clBtnFace;
        DBGrid.Columns[i].Title.Font.Color := clBlack;
        DBGrid.Columns[i].Title.Font.Style := [];
      end;
      Column.Title.color := ClYellow;
      Column.Title.Font.Style := [ fsBold, fsItalic];
      Column.Title.Font.Color := clWindowFrame;
    end;



procedure TFrmProdutos.DBNavigatorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  FotosProdutos.Picture.LoadFromFile(DmDados.TabProdutosPROD_FOTOS.Value);
end;

procedure TFrmProdutos.EditCodigosChange(Sender: TObject);
begin
  Tam := Length(EditCodigos.Text);
      if TAM = 12 then
      begin
        Codigos := EditCodigos.Text;
        Digitos := Codigos;
        Codigos := Codigos + EAN13(Digitos);
        DBEdit1.Text := Codigos;
        EditDigitos.Text :=  EAN13(Digitos);

      end;
end;

procedure TFrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    DmDados.TabProdutos.Close;
  end;

procedure TFrmProdutos.FormCreate(Sender: TObject);
  begin
    DmDados.TabProdutos.Open;
    DmDados.TabProdutos.Last;
  end;

procedure TFrmProdutos.FormKeyPress(Sender: TObject; var Key: Char);
  begin
    if key =#27 then
    begin
      if CardPanel.ActiveCardIndex = 0 then
      Close
      else
      btnCancelar.Click;
    end;
  end;

procedure TFrmProdutos.FormShow(Sender: TObject);
  begin
    FotosProdutos.Picture.LoadFromFile(DmDados.TabProdutosPROD_FOTOS.Value);
    CardPanel.ActiveCard := CardConsultas;
    DBGrid.SetFocus;
  end;

procedure TFrmProdutos.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  const
     sc_DragMove = $f012;
  begin

    ReleaseCapture;
    Perform(wm_SysCommand, sc_DragMove, 0);

  end;

end.
