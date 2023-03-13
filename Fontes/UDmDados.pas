unit UDmDados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBTable,
  IBX.IBDatabase, IBX.IBSQL, IBX.IBQuery, ppBands, ppCache, ppClass,
  ppDesignLayer, ppParameter, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  ppCtrls, ppPrnabl, Vcl.Imaging.jpeg;

type
  TDmDados = class(TDataModule)
    Transaction: TIBTransaction;
    Projeto_Pdv: TIBDatabase;
    TabLogos: TIBTable;
    DsLogos: TDataSource;
    TabLogosLOGOS_ID: TIntegerField;
    TabLogosLOGOS_IMGS: TIBStringField;
    TabFuncionarios: TIBTable;
    DsFuncionarios: TDataSource;
    TabFuncionariosFUNC_ID: TIntegerField;
    TabFuncionariosFUNC_NOME: TIBStringField;
    TabFuncionariosFUNC_ENDERECO: TIBStringField;
    TabFuncionariosFUNC_NUMERO: TIBBCDField;
    TabFuncionariosFUNC_BAIRRO: TIBStringField;
    TabFuncionariosFUNC_CEP: TIBStringField;
    TabFuncionariosFUNC_CIDADE: TIBStringField;
    TabFuncionariosFUNC_ESTADO: TIBStringField;
    TabFuncionariosFUNC_TELEFONE: TIBStringField;
    TabFuncionariosFUNC_RG: TIBStringField;
    TabFuncionariosFUNC_CPF: TIBStringField;
    TabFuncionariosFUNC_CTPS: TIBStringField;
    TabFuncionariosFUNC_CARGO: TIBStringField;
    TabFuncionariosFUNC_SALARIO: TFloatField;
    TabFuncionariosFUNC_SEXO: TIBStringField;
    TabFuncionariosFUNC_ESTADO_CIVIL: TIBStringField;
    TabFuncionariosFUNC_LOGIN: TIBStringField;
    TabFuncionariosFUNC_SENHA: TIBStringField;
    TabFuncionariosFUNC_NIVEL: TIntegerField;
    TabFuncionariosFUNC_FOTOS: TIBStringField;
    TabClientes: TIBTable;
    TabClientesCLI_ID: TIntegerField;
    TabClientesCLI_NOME: TIBStringField;
    TabClientesCLI_ENDERECO: TIBStringField;
    TabClientesCLI_NUMERO: TIBBCDField;
    TabClientesCLI_BAIRRO: TIBStringField;
    TabClientesCLI_CEP: TIBStringField;
    TabClientesCLI_CIDADE: TIBStringField;
    TabClientesCLI_ESTADO: TIBStringField;
    TabClientesCLI_TELEFONE: TIBStringField;
    TabClientesCLI_RG: TIBStringField;
    TabClientesCLI_CPF: TIBStringField;
    TabClientesCLI_PROFISSAO: TIBStringField;
    TabClientesCLI_RENDA: TFloatField;
    TabClientesCLI_SEXO: TIBStringField;
    TabClientesCLI_ESTADO_CIVIL: TIBStringField;
    TabClientesCLI_FOTOS: TIBStringField;
    DsClientes: TDataSource;
    TabProdutos: TIBTable;
    DsProdutos: TDataSource;
    TabProdutosPROD_ID: TIntegerField;
    TabProdutosPROD_CODIGO_BARRA: TIBStringField;
    TabProdutosPROD_PRODUTOS: TIBStringField;
    TabProdutosPROD_QTDE_ESTOQUE: TIntegerField;
    TabProdutosPROD_VALOR_CUSTO: TFloatField;
    TabProdutosPROD_LUCRO: TIntegerField;
    TabProdutosPROD_VALOR_VENDA: TFloatField;
    TabProdutosPROD_FOTOS: TIBStringField;
    TabVendas: TIBTable;
    DsConsulta: TDataSource;
    DsVendas: TDataSource;
    DsCarrinhos: TDataSource;
    DsEstoque: TDataSource;
    TabVendasVEN_ID: TIntegerField;
    TabVendasVEN_NUMERO_NOTA: TIBStringField;
    TabVendasVEN_DATA_VENDA: TDateField;
    TabVendasVEN_HORA_VENDA: TTimeField;
    TabVendasVEN_TOTAL_VENDA: TFloatField;
    TabVendasVEN_PAGAMENTOS: TFloatField;
    TabVendasVEN_TROCO: TFloatField;
    TabVendasCLI_ID: TIntegerField;
    TabVendasFUNC_ID: TIntegerField;
    TabVendasFORMAS_ID: TIntegerField;
    SqlConsultas: TIBQuery;
    SqlCarrinhos: TIBQuery;
    SqlEstoque: TIBQuery;
    SqlConsultasPROD_ID: TIntegerField;
    SqlConsultasPROD_CODIGO_BARRA: TIBStringField;
    SqlConsultasPROD_PRODUTOS: TIBStringField;
    SqlConsultasPROD_QTDE_ESTOQUE: TIntegerField;
    SqlConsultasPROD_VALOR_CUSTO: TFloatField;
    SqlConsultasPROD_LUCRO: TIntegerField;
    SqlConsultasPROD_VALOR_VENDA: TFloatField;
    SqlConsultasPROD_FOTOS: TIBStringField;
    SqlCarrinhosCAR_ID: TIntegerField;
    SqlCarrinhosCAR_PRODUTOS: TIntegerField;
    SqlCarrinhosCAR_QTDE: TIntegerField;
    SqlProdutosAdd: TIBQuery;
    SqlCarrinhosPROD_ID: TIntegerField;
    SqlCarrinhosPROD_CODIGO_BARRA: TIBStringField;
    SqlCarrinhosPROD_PRODUTOS: TIBStringField;
    SqlCarrinhosPROD_QTDE_ESTOQUE: TIntegerField;
    SqlCarrinhosPROD_VALOR_CUSTO: TFloatField;
    SqlCarrinhosPROD_LUCRO: TIntegerField;
    SqlCarrinhosPROD_VALOR_VENDA: TFloatField;
    SqlCarrinhosPROD_FOTOS: TIBStringField;
    SqlCarrinhosCAR_SUBTOTAL: TFloatField;
    TabPagamentos: TIBTable;
    DsPagamentos: TDataSource;
    TabPagamentosPAG_ID: TIntegerField;
    TabPagamentosPAG_DATA_PAGAMENTOS: TDateField;
    TabPagamentosPAG_HORA_PAGAMENTOS: TTimeField;
    TabPagamentosPAG_VALOR_PAGAMENTOS: TFloatField;
    TabPagamentosPAG_MOTIVO: TIBStringField;
    DsEntradas: TDataSource;
    TabEntradas: TIBTable;
    TabEntradasENT_ID: TIntegerField;
    TabEntradasENT_DATA_ENTRADA: TDateField;
    TabEntradasENT_HORA_ENTRADA: TTimeField;
    TabEntradasENT_VALOR_ENTRADA: TFloatField;
    DBPCarrinhos: TppDBPipeline;
    ReportCarrinhos: TppReport;
    ppParameterList1: TppParameterList;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLine1: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine2: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLine3: TppLine;
    ppLabel7: TppLabel;
    ppDBText3: TppDBText;
    ppLabel8: TppLabel;
    ppDBText4: TppDBText;
    ppLabel9: TppLabel;
    ppDBText5: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    DBPVendas: TppDBPipeline;
    ppLine4: TppLine;
    TabCaixas: TIBTable;
    DsCaixas: TDataSource;
    TabCaixasCAIX_ID: TIntegerField;
    TabCaixasCAIX_DATA_ABERTURA: TDateField;
    TabCaixasCAIX_HORA_ABERTURA: TTimeField;
    TabCaixasCAIX_VALOR_INICIAL: TFloatField;
    TabCaixasCAIX_HORA_FECHAMENTO: TTimeField;
    TabCaixasCAIX_TOTAL_PAGAMENTOS: TFloatField;
    TabCaixasCAIX_TOTAL_ENTRADAS: TFloatField;
    TabCaixasCAIX_TOTAL_FATURAMENTO: TFloatField;
    SqlAcesso: TIBQuery;
    DsAcesso: TDataSource;
    SqlAcessoFUNC_NOME: TIBStringField;
    SqlAcessoFUNC_CARGO: TIBStringField;
    SqlAcessoFUNC_LOGIN: TIBStringField;
    SqlAcessoFUNC_SENHA: TIBStringField;
    SqlAcessoFUNC_NIVEL: TIntegerField;
    SqlAcessoFUNC_FOTOS: TIBStringField;
    SqlAcessoFUNC_ID: TIntegerField;
    DBPAcesso: TppDBPipeline;
    DBPEntradas: TppDBPipeline;
    ReportEntradas: TppReport;
    ppParameterList2: TppParameterList;
    ppDesignLayers2: TppDesignLayers;
    ppDesignLayer2: TppDesignLayer;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppDBText10: TppDBText;
    ppLine5: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLine6: TppLine;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppLine7: TppLine;
    DBPPagamentos: TppDBPipeline;
    ReportPagamentos: TppReport;
    ppParameterList3: TppParameterList;
    ppDesignLayers3: TppDesignLayers;
    ppDesignLayer3: TppDesignLayer;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDBText14: TppDBText;
    ppLine8: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLine9: TppLine;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLine10: TppLine;
    SqlPagamentos: TIBQuery;
    SqlPagamentosPAG_ID: TIntegerField;
    SqlPagamentosPAG_DATA_PAGAMENTOS: TDateField;
    SqlPagamentosPAG_HORA_PAGAMENTOS: TTimeField;
    SqlPagamentosPAG_VALOR_PAGAMENTOS: TFloatField;
    SqlPagamentosPAG_MOTIVO: TIBStringField;
    SqlEntradas: TIBQuery;
    SqlEntradasENT_ID: TIntegerField;
    SqlEntradasENT_DATA_ENTRADA: TDateField;
    SqlEntradasENT_HORA_ENTRADA: TTimeField;
    SqlEntradasENT_VALOR_ENTRADA: TFloatField;
    procedure SqlCarrinhosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmDados: TDmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmDados.SqlCarrinhosCalcFields(DataSet: TDataSet);
begin
  DmDados.SqlCarrinhosCAR_SUBTOTAL.Value :=
  DmDados.SqlCarrinhosPROD_VALOR_VENDA.Value *
  DmDados.SqlCarrinhosCAR_QTDE.Value;
end;

end.
