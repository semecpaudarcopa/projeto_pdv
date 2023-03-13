unit UFormas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrmFormas = class(TForm)
    Label1: TLabel;
    RbDinheiro: TRadioButton;
    Panel4: TPanel;
    RbCheques: TRadioButton;
    RbCartao: TRadioButton;
    RbCrediario: TRadioButton;
    RbPix: TRadioButton;
    RbOutros: TRadioButton;
    BtnFechar: TBitBtn;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFormas: TFrmFormas;

implementation

{$R *.dfm}

uses UDmDados, UFinalizar;

procedure TFrmFormas.BtnFecharClick(Sender: TObject);
  begin
    if RbCrediario.Checked = True then
    DmDados.TabVendasFORMAS_ID.Value := 1
    else
      begin
      if RbCheques.Checked = True then
      DmDados.TabVendasFORMAS_ID.Value := 2
      else

        begin
        if RbCartao.Checked = True then
        DmDados.TabVendasFORMAS_ID.Value := 3
        else
        end;
        begin
        if RbDinheiro.Checked = True then
        DmDados.TabVendasFORMAS_ID.Value := 4
        else
        end;
        begin
        if RbPix.Checked = True then
        DmDados.TabVendasFORMAS_ID.Value := 5
        else
        end;
        begin
        if RbOutros.Checked = True then
        DmDados.TabVendasFORMAS_ID.Value := 6;
        end;
        Close;
      end;
    end;


procedure TFrmFormas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmFinalizar.BtnImprimir.Enabled := True;
end;

end.
