unit UFuncionarios;

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
  TFrmFuncionarios = class(TForm)
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
    FotosFuncionarios: TImage;
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
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
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
  FrmFuncionarios: TFrmFuncionarios;

implementation

{$R *.dfm}

uses UDmDados;

procedure TFrmFuncionarios.btnAlterarClick(Sender: TObject);
  begin
    DmDados.TabFuncionarios.Edit;
    CardPanel.ActiveCard := CardCadastros;
    DBEdit1.SetFocus;
  end;

procedure TFrmFuncionarios.btnCancelarClick(Sender: TObject);
  begin
     DmDados.TabFuncionarios.Cancel;
     DmDados.TabFuncionarios.Last;
     FotosFuncionarios.Picture.LoadFromFile(DmDados.TabFuncionariosFUNC_FOTOS.Value);
     CardPanel.ActiveCard := CardConsultas;
     DBGrid.SetFocus;
  end;

procedure TFrmFuncionarios.btnExcluirClick(Sender: TObject);
  begin
    if DmDados.TabFuncionariosFUNC_ID.Value = 1  then
    ShowMessage('Registro Protegido do Sistema')
  else
   if MessageDlg('Deseja Excluir o Registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then

    DmDados.TabFuncionarios.Delete;
    DmDados.TabFuncionarios.Last;
  end;

procedure TFrmFuncionarios.btnFotosClick(Sender: TObject);
begin
   if AbreFotos.Execute then
  begin
      DmDados.TabFuncionarios.Edit;
      FotosFuncionarios.Picture.LoadFromFile(AbreFotos.FileName);
      DmDados.TabFuncionariosFUNC_FOTOS.Value := AbreFotos.FileName;
  end;
end;

procedure TFrmFuncionarios.btnInserirClick(Sender: TObject);
  begin
    DmDados.TabFuncionarios.Insert;
    DmDados.TabFuncionariosFUNC_FOTOS.Value := 'C:\Projeto_Pdv\Imagens\SemFotos.jpg';
    FotosFuncionarios.Picture.LoadFromFile(DmDados.TabFuncionariosFUNC_FOTOS.Value);
    CardPanel.ActiveCard := CardCadastros;
    DBEdit1.SetFocus;
  end;

procedure TFrmFuncionarios.btnSalvarClick(Sender: TObject);
  begin
     if DBEdit11.Text = ''  then
      ShowMessage('Campo CPF não pode ser vazio')
      else

      begin
      if DBEdit17.Text = ''  then
      ShowMessage('Campo Login não pode ser vazio')
      else
        begin
        if DBEdit18.Text = ''  then
        ShowMessage('Campo Senha não pode ser vazio')
        else

        begin
        if DBEdit19.Text = ''  then
        ShowMessage('Campo nivel não pode ser vazio')
        else

          begin
          DmDados.TabFuncionarios.Post;
          DmDados.Transaction.CommitRetaining;
          DmDados.TabFuncionarios.Last;
          FotosFuncionarios.Picture.LoadFromFile(DmDados.TabFuncionariosFUNC_FOTOS.Value);
          CardPanel.ActiveCard := CardConsultas;
          MessageDlg('Dados salvo com sucesso!',mtInformation,[mbOk],0);
          DBGrid.SetFocus;
          end;
        end;
      end;
    end;

  end;

procedure TFrmFuncionarios.DBGridCellClick(Column: TColumn);
begin
  FotosFuncionarios.Picture.LoadFromFile(DmDados.TabFuncionariosFUNC_FOTOS.Value);
end;

procedure TFrmFuncionarios.DBGridDrawColumnCell(Sender: TObject;
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


procedure TFrmFuncionarios.DBGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FotosFuncionarios.Picture.LoadFromFile(DmDados.TabFuncionariosFUNC_FOTOS.Value);
end;

procedure TFrmFuncionarios.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
  begin
    if Texto > '' then
    begin
      DmDados.TabFuncionarios.Locate('FUNC_CPF', Texto, [locaseinsensitive,loPartialKey]);
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

procedure TFrmFuncionarios.DBGridKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   FotosFuncionarios.Picture.LoadFromFile(DmDados.TabFuncionariosFUNC_FOTOS.Value);
end;

procedure TFrmFuncionarios.DBGridTitleClick(Column: TColumn);
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



procedure TFrmFuncionarios.DBNavigatorClick(Sender: TObject;
  Button: TNavigateBtn);
begin
  FotosFuncionarios.Picture.LoadFromFile(DmDados.TabFuncionariosFUNC_FOTOS.Value);
end;

procedure TFrmFuncionarios.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    DmDados.TabFuncionarios.Close;
  end;

procedure TFrmFuncionarios.FormCreate(Sender: TObject);
  begin
    DmDados.TabFuncionarios.Open;
    DmDados.TabFuncionarios.Last;
  end;

procedure TFrmFuncionarios.FormKeyPress(Sender: TObject; var Key: Char);
  begin
    if key =#27 then
    begin
      if CardPanel.ActiveCardIndex = 0 then
      Close
      else
      btnCancelar.Click;
    end;
  end;

procedure TFrmFuncionarios.FormShow(Sender: TObject);
  begin
    FotosFuncionarios.Picture.LoadFromFile(DmDados.TabFuncionariosFUNC_FOTOS.Value);
    CardPanel.ActiveCard := CardConsultas;
    DBGrid.SetFocus;
  end;

procedure TFrmFuncionarios.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  const
     sc_DragMove = $f012;
  begin

    ReleaseCapture;
    Perform(wm_SysCommand, sc_DragMove, 0);

  end;

end.
