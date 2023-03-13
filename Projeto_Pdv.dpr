program Projeto_Pdv;

uses
  Vcl.Forms,
  SysUtils,
  UPrincipal in 'UPrincipal.pas' {FrmPrincipal},
  UDmDados in 'Fontes\UDmDados.pas' {DmDados: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  UFuncionarios in 'Fontes\UFuncionarios.pas' {FrmFuncionarios},
  UClientes in 'Fontes\UClientes.pas' {FrmClientes},
  UProdutos in 'Fontes\UProdutos.pas' {FrmProdutos},
  U_funcoes in 'Fontes\U_funcoes.pas',
  UPdv in 'Fontes\UPdv.pas' {FrmPdv},
  UConsultas in 'Fontes\UConsultas.pas' {FrmConsultas},
  UFinalizar in 'Fontes\UFinalizar.pas' {FrmFinalizar},
  UFormas in 'Fontes\UFormas.pas' {FrmFormas},
  UPagamentos in 'Fontes\UPagamentos.pas' {FrmPagamentos},
  UAbertura in 'Fontes\UAbertura.pas' {FrmAbertura},
  UFechamento in 'Fontes\UFechamento.pas' {FrmFechamento},
  UAcesso in 'Fontes\UAcesso.pas' {FrmAcesso};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmDados, DmDados);
  FrmAcesso := TFrmAcesso.Create(Nil);
  if (FrmAcesso.ShowModal = 1) then
  begin
    Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  end;
    FreeAndNil(FrmAcesso);

  Application.Run;
end.
