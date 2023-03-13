unit UAbertura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons;

type
  TFrmAbertura = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    btnPdv: TBitBtn;
    btnCancelar: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure btnPdvClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAbertura: TFrmAbertura;

implementation

{$R *.dfm}

uses UDmDados, UPdv;

procedure TFrmAbertura.btnCancelarClick(Sender: TObject);
begin
  DmDados.TabCaixas.Cancel;
  Close;
end;

procedure TFrmAbertura.btnPdvClick(Sender: TObject);
begin
     try
     Application.CreateForm(TFrmPdv,FrmPdv);
     FrmPdv.ShowModal;
  finally
     FreeAndNil(FrmPdv);
  end;
  Close;
end;

procedure TFrmAbertura.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  if DBEdit3.Text = '' then
  ShowMessage('Digite um Valor Inicial')
  else
  begin
    btnPdv.Enabled := True;
    btnPdv.SetFocus;
  end;

end;

procedure TFrmAbertura.FormCreate(Sender: TObject);
begin
  DmDados.TabCaixas.Open;
  DmDados.TabCaixas.Last;
  DmDados.TabCaixas.Insert;
  DmDados.TabCaixasCAIX_DATA_ABERTURA.Value := Date;
  DmDados.TabCaixasCAIX_HORA_ABERTURA.Value := Time;
  btnPdv.Enabled := False;

end;

end.
