unit UClientes;

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
  TFrmClientes = class(TForm)
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
    FotosClientes: TImage;
    AbreFotos: TOpenPictureDialog;
    Panel1: TPanel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnFotos: TBitBtn;
    DBGrid: TDBGrid;
    Panel2: TPanel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit20: TDBEdit;
    Label22: TLabel;
    Label3: TLabel;
    pnlPesquisaNome: TPanel;
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


  private
    { Private declarations }
  public
   texto : string;
    { Public declarations }
  end;

var
  FrmClientes: TFrmClientes;

implementation

{$R *.dfm}

uses UDmDados;

procedure TFrmClientes.btnAlterarClick(Sender: TObject);
  begin
    DmDados.TabClientes.Edit;
    CardPanel.ActiveCard := CardCadastros;
    DBEdit1.SetFocus;
  end;

procedure TFrmClientes.btnCancelarClick(Sender: TObject);
  begin
     DmDados.TabClientes.Cancel;
     DmDados.TabClientes.Last;
     FotosClientes.Picture.LoadFromFile(DmDados.TabClientesCLI_FOTOS.Value);
     CardPanel.ActiveCard := CardConsultas;
     DBGrid.SetFocus;
  end;

procedure TFrmClientes.btnExcluirClick(Sender: TObject);
  begin
    if DmDados.TabClientesCLI_ID.Value = 1  then
  ShowMessage('Registro Protegido do Sistema')
  else
   if MessageDlg('Deseja Excluir o Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then

  DmDados.TabClientes.Delete;
  DmDados.TabClientes.Last;
  end;

procedure TFrmClientes.btnFotosClick(Sender: TObject);
begin
   if AbreFotos.Execute then
  begin
      DmDados.TabClientes.Edit;
      FotosClientes.Picture.LoadFromFile(AbreFotos.FileName);
      DmDados.TabClientesCLI_FOTOS.Value := AbreFotos.FileName;
  end;
end;

procedure TFrmClientes.btnInserirClick(Sender: TObject);
  begin
    DmDados.TabClientes.Insert;
    DmDados.TabClientesCLI_FOTOS.Value := 'C:\Projeto_Pdv\Imagens\SemFotos.jpg';
    FotosClientes.Picture.LoadFromFile(DmDados.TabClientesCLI_FOTOS.Value);
    CardPanel.ActiveCard := CardCadastros;
    DBEdit1.SetFocus;
  end;

procedure TFrmClientes.btnSalvarClick(Sender: TObject);
  begin
     if DBEdit11.Text = ''  then
      ShowMessage('Campo CPF não pode ser vazio')
      else

      begin
      if DBEdit1.Text = ''  then
      ShowMessage('Campo Nome não pode ser vazio')
      else
        begin
        if DBEdit3.Text = ''  then
        ShowMessage('Campo Endereço não pode ser vazio')
        else

        begin
        if DBEdit9.Text = ''  then
        ShowMessage('Campo Telefone não pode ser vazio')
        else

          begin
          DmDados.TabClientes.Post;
          DmDados.Transaction.CommitRetaining;
          DmDados.TabClientes.Last;
          FotosClientes.Picture.LoadFromFile(DmDados.TabClientesCLI_FOTOS.Value);
          CardPanel.ActiveCard := CardConsultas;
          MessageDlg('Dados salvo com sucesso!',mtInformation,[mbOk],0);
          DBGrid.SetFocus;
          end;
        end;
      end;
    end;

  end;

procedure TFrmClientes.DBGridCellClick(Column: TColumn);
begin
  FotosClientes.Picture.LoadFromFile(DmDados.TabClientesCLI_FOTOS.Value);
end;

procedure TFrmClientes.DBGridDrawColumnCell(Sender: TObject;
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


procedure TFrmClientes.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FotosClientes.Picture.LoadFromFile(DmDados.TabClientesCLI_FOTOS.Value);
end;

procedure TFrmClientes.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
  begin
    if Texto > '' then
    begin
      DmDados.TabClientes.Locate('CLI_CPF', Texto, [locaseinsensitive,loPartialKey]);
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

procedure TFrmClientes.DBGridKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   FotosClientes.Picture.LoadFromFile(DmDados.TabClientesCLI_FOTOS.Value);
end;

procedure TFrmClientes.DBGridTitleClick(Column: TColumn);
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



procedure TFrmClientes.DBNavigatorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  FotosClientes.Picture.LoadFromFile(DmDados.TabClientesCLI_FOTOS.Value);
end;

procedure TFrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    DmDados.TabClientes.Close;
  end;

procedure TFrmClientes.FormCreate(Sender: TObject);
  begin
    DmDados.TabClientes.Open;
    DmDados.TabClientes.Last;
  end;

procedure TFrmClientes.FormKeyPress(Sender: TObject; var Key: Char);
  begin
    if key =#27 then
    begin
      if CardPanel.ActiveCardIndex = 0 then
      Close
      else
      btnCancelar.Click;
    end;
  end;

procedure TFrmClientes.FormShow(Sender: TObject);
  begin
    FotosClientes.Picture.LoadFromFile(DmDados.TabClientesCLI_FOTOS.Value);
    CardPanel.ActiveCard := CardConsultas;
    DBGrid.SetFocus;
  end;

procedure TFrmClientes.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  const
     sc_DragMove = $f012;
  begin

    ReleaseCapture;
    Perform(wm_SysCommand, sc_DragMove, 0);

  end;

end.
