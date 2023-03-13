unit UPrincipal;

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
  Vcl.ExtDlgs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.Themes,
  Vcl.Imaging.jpeg;

type
  TFrmPrincipal = class(TForm)
    pnlLogo: TPanel;
    Image1: TImage;
    pnlTopo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LabelHora: TLabel;
    LabelData: TLabel;
    pnlFotoLogos: TPanel;
    FotosLogos: TImage;
    pnlMenu: TPanel;
    btnFuncionarios: TBitBtn;
    btnProdutos: TBitBtn;
    btnClientes: TBitBtn;
    btnVendas: TBitBtn;
    btnTrocarLogo: TBitBtn;
    RzSeparator1: TPanel;
    Panel6: TPanel;
    btnLuna: TBitBtn;
    btnCarbon: TBitBtn;
    btnSilver: TBitBtn;
    Panel7: TPanel;
    btnSair: TBitBtn;
    Timer: TTimer;
    AbreLogos: TOpenPictureDialog;
    procedure TimerTimer(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnFuncionariosClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnTrocarLogoClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
    procedure btnCarbonClick(Sender: TObject);
    procedure btnLunaClick(Sender: TObject);
    procedure btnSilverClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

  private
    //
  public
    FDefaultStyleName:String;
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses UDmDados, UFuncionarios, UClientes, UProdutos, UPdv, UAbertura;

procedure TFrmPrincipal.btnCarbonClick(Sender: TObject);
begin
  if Assigned(TStyleManager.activeStyle) and (TStyleManager.activeStyle.Name <> 'Windows10 Blue') then
  begin
    TStyleManager.TrySetStyle('Windows10 Blue');
  end;
end;


procedure TFrmPrincipal.btnClientesClick(Sender: TObject);
begin
    FrmClientes := TFrmClientes.Create(self);
  try
     FrmClientes.Top    := Round(pnlTopo.Height + ((pnlFotoLogos.Height - FrmClientes.Height) / 2 ));
     FrmClientes.Left    := Round(pnlMenu.Width + ((pnlFotoLogos.Width - FrmClientes.Width) / 2 ));
     FrmClientes.ShowModal;
  finally
     FreeAndNil(FrmClientes);
  end;
end;

procedure TFrmPrincipal.btnFuncionariosClick(Sender: TObject);
begin

  FrmFuncionarios := TFrmFuncionarios.Create(self);

  try

    FrmFuncionarios.Top    := Round(pnlTopo.Height + ((pnlFotoLogos.Height - FrmFuncionarios.Height) / 2 ));
    FrmFuncionarios.Left    := Round(pnlMenu.Width + ((pnlFotoLogos.Width - FrmFuncionarios.Width) / 2 ));

    FrmFuncionarios.ShowModal;
  finally
   FreeAndNil(FrmFuncionarios);
  end;


end;

procedure TFrmPrincipal.btnLunaClick(Sender: TObject);
begin
  if Assigned(TStyleManager.activeStyle) and (TStyleManager.activeStyle.Name <> 'Luna') then
  begin
    TStyleManager.TrySetStyle('Luna');
  end;
end;

procedure TFrmPrincipal.btnProdutosClick(Sender: TObject);
begin
    FrmProdutos := TFrmProdutos.Create(self);
   try
     FrmProdutos.Top    := Round(pnlTopo.Height + ((pnlFotoLogos.Height - FrmProdutos.Height) / 2 ));
     FrmProdutos.Left    := Round(pnlMenu.Width + ((pnlFotoLogos.Width - FrmProdutos.Width) / 2 ));
     FrmProdutos.ShowModal;
  finally
     FreeAndNil(FrmProdutos);
  end;
end;

procedure TFrmPrincipal.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmPrincipal.btnSilverClick(Sender: TObject);
begin
  if Assigned(TStyleManager.activeStyle) and (TStyleManager.activeStyle.Name <> 'Silver') then
  begin
    TStyleManager.TrySetStyle('Silver');
  end;
end;

procedure TFrmPrincipal.btnTrocarLogoClick(Sender: TObject);
begin
  if AbreLogos.Execute then
  begin
    DmDados.TabLogos.Edit;
    FotosLogos.Picture.LoadFromFile(AbreLogos.FileName);
    DmDados.TabLogosLOGOS_IMGS.Value := AbreLogos.FileName;
    DmDados.TabLogos.Post;
    DmDados.Transaction.CommitRetaining;
  end;
end;

procedure TFrmPrincipal.btnVendasClick(Sender: TObject);
begin
  try
     Application.CreateForm(TFrmAbertura,FrmAbertura);
     FrmAbertura.ShowModal;
  finally
     FreeAndNil(FrmAbertura);
  end;
end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmDados.TabLogos.Close;
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
begin
  DmDados.TabLogos.Open;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  FotosLogos.Picture.LoadFromFile(DmDados.TabLogosLOGOS_IMGS.Value);
end;

procedure TFrmPrincipal.TimerTimer(Sender: TObject);
begin
  LabelHora.Caption := TimeToStr(Time);
  LabelData.Caption := FormatDateTime('dddd', Date) + (', ') + FormatDateTime('dd', Date)+(' de ')+FormatDateTime('mmmm', Date)+(' de ')+FormatDateTime('yyyy', Date);
end;

end.
