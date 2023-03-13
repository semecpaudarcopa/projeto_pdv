unit UConsultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFrmConsultas = class(TForm)
    FotosConsultas: TImage;
    Label1: TLabel;
    EditConsultas: TEdit;
    Label2: TLabel;
    LabelProdutos: TLabel;
    Label4: TLabel;
    DBText1: TDBText;
    BtnFechar: TSpeedButton;
    procedure EditConsultasKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultas: TFrmConsultas;

implementation

{$R *.dfm}

uses UDmDados;

procedure TFrmConsultas.BitBtn1Click(Sender: TObject);
begin
Close;
end;

procedure TFrmConsultas.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsultas.EditConsultasKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
    begin
    with DmDados.SqlConsultas do
      begin
        Close;
        SQL.Clear;
        SQL.Add('Select*From Tab_Produto');
        SQL.Add('where PROD_CODIGO_BARRA Like :Codigos');
        ParamByName('Codigos').Value := EditConsultas.Text;
        Open;
        if RecordCount > 0 then
          begin
            LabelProdutos.Caption := DmDados.SqlConsultasPROD_PRODUTOS.Value;
            FotosConsultas.Picture.LoadFromFile(DmDados.SqlConsultasPROD_FOTOS.Value);
            //LabelValor.Caption :=  DmDados.SqlConsultasPROD_VALOR_VENDA.Value;
          end
          else
            ShowMessage('Produto não Cadastrado');

      end;
      EditConsultas.Clear;
      EditConsultas.SetFocus;
    end;
end;

end.
