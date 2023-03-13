object DmDados: TDmDados
  OldCreateOrder = False
  Height = 610
  Width = 578
  object Transaction: TIBTransaction
    Active = True
    DefaultDatabase = Projeto_Pdv
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    Left = 24
    Top = 24
  end
  object Projeto_Pdv: TIBDatabase
    Connected = True
    DatabaseName = 'localhost:C:\Projeto_Pdv\Banco de Dados\PROJETO_PDV.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=ISO8859_1')
    LoginPrompt = False
    DefaultTransaction = Transaction
    ServerType = 'IBServer'
    Left = 120
    Top = 24
  end
  object TabLogos: TIBTable
    Database = Projeto_Pdv
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TAB_LOGO'
    UniDirectional = False
    Left = 216
    Top = 16
    object TabLogosLOGOS_ID: TIntegerField
      FieldName = 'LOGOS_ID'
      Required = True
    end
    object TabLogosLOGOS_IMGS: TIBStringField
      FieldName = 'LOGOS_IMGS'
      Size = 70
    end
  end
  object DsLogos: TDataSource
    DataSet = TabLogos
    Left = 296
    Top = 16
  end
  object TabFuncionarios: TIBTable
    Database = Projeto_Pdv
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'FUNC_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'FUNC_NOME'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'FUNC_ENDERECO'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'FUNC_NUMERO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'FUNC_BAIRRO'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'FUNC_CEP'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'FUNC_CIDADE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'FUNC_ESTADO'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'FUNC_TELEFONE'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'FUNC_RG'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'FUNC_CPF'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'FUNC_CTPS'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'FUNC_CARGO'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'FUNC_SALARIO'
        DataType = ftFloat
      end
      item
        Name = 'FUNC_SEXO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'FUNC_ESTADO_CIVIL'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'FUNC_LOGIN'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'FUNC_SENHA'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'FUNC_NIVEL'
        DataType = ftInteger
      end
      item
        Name = 'FUNC_FOTOS'
        DataType = ftWideString
        Size = 70
      end>
    IndexDefs = <
      item
        Name = 'PK_TAB_FUNCIONARIO'
        Fields = 'FUNC_ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'TAB_FUNCIONARIO'
    UniDirectional = False
    Left = 24
    Top = 152
    object TabFuncionariosFUNC_ID: TIntegerField
      FieldName = 'FUNC_ID'
    end
    object TabFuncionariosFUNC_NOME: TIBStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'FUNC_NOME'
      Size = 35
    end
    object TabFuncionariosFUNC_ENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'FUNC_ENDERECO'
      Size = 35
    end
    object TabFuncionariosFUNC_NUMERO: TIBBCDField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'FUNC_NUMERO'
      Precision = 18
      Size = 2
    end
    object TabFuncionariosFUNC_BAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'FUNC_BAIRRO'
      Size = 35
    end
    object TabFuncionariosFUNC_CEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'FUNC_CEP'
      EditMask = '00\.000\-999;1;_'
      Size = 15
    end
    object TabFuncionariosFUNC_CIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'FUNC_CIDADE'
      Size = 35
    end
    object TabFuncionariosFUNC_ESTADO: TIBStringField
      DisplayLabel = 'Estado'
      FieldName = 'FUNC_ESTADO'
      Size = 35
    end
    object TabFuncionariosFUNC_TELEFONE: TIBStringField
      DisplayLabel = 'Telefone'
      FieldName = 'FUNC_TELEFONE'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
    object TabFuncionariosFUNC_RG: TIBStringField
      DisplayLabel = 'RG'
      FieldName = 'FUNC_RG'
      Size = 15
    end
    object TabFuncionariosFUNC_CPF: TIBStringField
      DisplayLabel = 'CPF'
      FieldName = 'FUNC_CPF'
      EditMask = '000\.000\.000\-00;1;_'
      Size = 15
    end
    object TabFuncionariosFUNC_CTPS: TIBStringField
      DisplayLabel = 'CTPS'
      FieldName = 'FUNC_CTPS'
      Size = 15
    end
    object TabFuncionariosFUNC_CARGO: TIBStringField
      DisplayLabel = 'Cargo'
      FieldName = 'FUNC_CARGO'
      Size = 35
    end
    object TabFuncionariosFUNC_SALARIO: TFloatField
      DisplayLabel = 'Sal'#225'rio'
      FieldName = 'FUNC_SALARIO'
      currency = True
    end
    object TabFuncionariosFUNC_SEXO: TIBStringField
      DisplayLabel = 'Sexo'
      FieldName = 'FUNC_SEXO'
    end
    object TabFuncionariosFUNC_ESTADO_CIVIL: TIBStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'FUNC_ESTADO_CIVIL'
    end
    object TabFuncionariosFUNC_LOGIN: TIBStringField
      DisplayLabel = 'Login'
      FieldName = 'FUNC_LOGIN'
      Size = 15
    end
    object TabFuncionariosFUNC_SENHA: TIBStringField
      DisplayLabel = 'Senha'
      FieldName = 'FUNC_SENHA'
      Size = 15
    end
    object TabFuncionariosFUNC_NIVEL: TIntegerField
      DisplayLabel = 'N'#237'vel'
      FieldName = 'FUNC_NIVEL'
    end
    object TabFuncionariosFUNC_FOTOS: TIBStringField
      DisplayLabel = 'Foto'
      FieldName = 'FUNC_FOTOS'
      Size = 70
    end
  end
  object DsFuncionarios: TDataSource
    DataSet = TabFuncionarios
    Left = 112
    Top = 152
  end
  object TabClientes: TIBTable
    Database = Projeto_Pdv
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CLI_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLI_NOME'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'CLI_ENDERECO'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'CLI_NUMERO'
        DataType = ftBCD
        Precision = 18
        Size = 2
      end
      item
        Name = 'CLI_BAIRRO'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'CLI_CEP'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'CLI_CIDADE'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'CLI_ESTADO'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'CLI_TELEFONE'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'CLI_RG'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'CLI_CPF'
        Attributes = [faFixed]
        DataType = ftWideString
        Size = 15
      end
      item
        Name = 'CLI_PROFISSAO'
        DataType = ftWideString
        Size = 35
      end
      item
        Name = 'CLI_RENDA'
        DataType = ftFloat
      end
      item
        Name = 'CLI_SEXO'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CLI_ESTADO_CIVIL'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'CLI_FOTOS'
        DataType = ftWideString
        Size = 70
      end>
    IndexDefs = <
      item
        Name = 'PK_TAB_CLIENTES'
        Fields = 'CLI_ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'TAB_CLIENTES'
    UniDirectional = False
    Left = 24
    Top = 96
    object TabClientesCLI_ID: TIntegerField
      FieldName = 'CLI_ID'
    end
    object TabClientesCLI_NOME: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_NOME'
      Size = 35
    end
    object TabClientesCLI_ENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLI_ENDERECO'
      Size = 35
    end
    object TabClientesCLI_NUMERO: TIBBCDField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CLI_NUMERO'
      Precision = 18
      Size = 2
    end
    object TabClientesCLI_BAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CLI_BAIRRO'
      Size = 35
    end
    object TabClientesCLI_CEP: TIBStringField
      DisplayLabel = 'CEP'
      FieldName = 'CLI_CEP'
      EditMask = '00\.000\-999;1;_'
      Size = 15
    end
    object TabClientesCLI_CIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CLI_CIDADE'
      Size = 35
    end
    object TabClientesCLI_ESTADO: TIBStringField
      DisplayLabel = 'Estado'
      FieldName = 'CLI_ESTADO'
      Size = 35
    end
    object TabClientesCLI_TELEFONE: TIBStringField
      DisplayLabel = 'Telefone'
      FieldName = 'CLI_TELEFONE'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
    object TabClientesCLI_RG: TIBStringField
      DisplayLabel = 'RG'
      FieldName = 'CLI_RG'
      Size = 15
    end
    object TabClientesCLI_CPF: TIBStringField
      DisplayLabel = 'CPF'
      FieldName = 'CLI_CPF'
      EditMask = '000\.000\.000\-00;1;_'
      Size = 15
    end
    object TabClientesCLI_PROFISSAO: TIBStringField
      DisplayLabel = 'Profiss'#227'o'
      FieldName = 'CLI_PROFISSAO'
      Size = 35
    end
    object TabClientesCLI_RENDA: TFloatField
      DisplayLabel = 'Renda'
      FieldName = 'CLI_RENDA'
      currency = True
    end
    object TabClientesCLI_SEXO: TIBStringField
      DisplayLabel = 'Sexo'
      FieldName = 'CLI_SEXO'
    end
    object TabClientesCLI_ESTADO_CIVIL: TIBStringField
      DisplayLabel = 'Estado Civil'
      FieldName = 'CLI_ESTADO_CIVIL'
    end
    object TabClientesCLI_FOTOS: TIBStringField
      DisplayLabel = 'Foto'
      FieldName = 'CLI_FOTOS'
      Size = 70
    end
  end
  object DsClientes: TDataSource
    DataSet = TabClientes
    Left = 112
    Top = 88
  end
  object TabProdutos: TIBTable
    Database = Projeto_Pdv
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PROD_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PROD_CODIGO_BARRA'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'PROD_PRODUTOS'
        DataType = ftWideString
        Size = 36
      end
      item
        Name = 'PROD_QTDE_ESTOQUE'
        DataType = ftInteger
      end
      item
        Name = 'PROD_VALOR_CUSTO'
        DataType = ftFloat
      end
      item
        Name = 'PROD_LUCRO'
        DataType = ftInteger
      end
      item
        Name = 'PROD_VALOR_VENDA'
        DataType = ftFloat
      end
      item
        Name = 'PROD_FOTOS'
        DataType = ftWideString
        Size = 70
      end>
    IndexDefs = <
      item
        Name = 'PK_TAB_PRODUTO'
        Fields = 'PROD_ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'TAB_PRODUTO'
    UniDirectional = False
    Left = 16
    Top = 224
    object TabProdutosPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
    end
    object TabProdutosPROD_CODIGO_BARRA: TIBStringField
      DisplayLabel = 'C'#243'digo de Barras'
      FieldName = 'PROD_CODIGO_BARRA'
    end
    object TabProdutosPROD_PRODUTOS: TIBStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'PROD_PRODUTOS'
      Size = 36
    end
    object TabProdutosPROD_QTDE_ESTOQUE: TIntegerField
      DisplayLabel = 'Qtd em Estoque'
      FieldName = 'PROD_QTDE_ESTOQUE'
    end
    object TabProdutosPROD_VALOR_CUSTO: TFloatField
      DisplayLabel = 'Valor de Custo'
      FieldName = 'PROD_VALOR_CUSTO'
      currency = True
    end
    object TabProdutosPROD_LUCRO: TIntegerField
      DisplayLabel = 'Lucro'
      FieldName = 'PROD_LUCRO'
    end
    object TabProdutosPROD_VALOR_VENDA: TFloatField
      DisplayLabel = 'Valor de Venda'
      FieldName = 'PROD_VALOR_VENDA'
      currency = True
    end
    object TabProdutosPROD_FOTOS: TIBStringField
      DisplayLabel = 'Foto'
      FieldName = 'PROD_FOTOS'
      Size = 70
    end
  end
  object DsProdutos: TDataSource
    DataSet = TabProdutos
    Left = 112
    Top = 216
  end
  object TabVendas: TIBTable
    Database = Projeto_Pdv
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'VEN_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'VEN_NUMERO_NOTA'
        DataType = ftWideString
        Size = 20
      end
      item
        Name = 'VEN_DATA_VENDA'
        DataType = ftDate
      end
      item
        Name = 'VEN_HORA_VENDA'
        DataType = ftTime
      end
      item
        Name = 'VEN_TOTAL_VENDA'
        DataType = ftFloat
      end
      item
        Name = 'VEN_PAGAMENTOS'
        DataType = ftFloat
      end
      item
        Name = 'VEN_TROCO'
        DataType = ftFloat
      end
      item
        Name = 'CLI_ID'
        DataType = ftInteger
      end
      item
        Name = 'FUNC_ID'
        DataType = ftInteger
      end
      item
        Name = 'FORMAS_ID'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'PK_TAB_VENDAS'
        Fields = 'VEN_ID'
        Options = [ixUnique]
      end
      item
        Name = 'FK_TAB_VENDAS_1'
        Fields = 'CLI_ID'
      end
      item
        Name = 'FK_TAB_VENDAS_2'
        Fields = 'FUNC_ID'
      end
      item
        Name = 'FK_TAB_VENDAS_3'
        Fields = 'FORMAS_ID'
      end>
    StoreDefs = True
    TableName = 'TAB_VENDAS'
    UniDirectional = False
    Left = 16
    Top = 368
    object TabVendasVEN_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'VEN_ID'
    end
    object TabVendasVEN_NUMERO_NOTA: TIBStringField
      FieldName = 'VEN_NUMERO_NOTA'
    end
    object TabVendasVEN_DATA_VENDA: TDateField
      FieldName = 'VEN_DATA_VENDA'
    end
    object TabVendasVEN_HORA_VENDA: TTimeField
      FieldName = 'VEN_HORA_VENDA'
    end
    object TabVendasVEN_TOTAL_VENDA: TFloatField
      Alignment = taLeftJustify
      FieldName = 'VEN_TOTAL_VENDA'
      currency = True
    end
    object TabVendasVEN_PAGAMENTOS: TFloatField
      Alignment = taLeftJustify
      FieldName = 'VEN_PAGAMENTOS'
      currency = True
    end
    object TabVendasVEN_TROCO: TFloatField
      Alignment = taLeftJustify
      FieldName = 'VEN_TROCO'
      currency = True
    end
    object TabVendasCLI_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CLI_ID'
    end
    object TabVendasFUNC_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FUNC_ID'
    end
    object TabVendasFORMAS_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'FORMAS_ID'
    end
  end
  object DsConsulta: TDataSource
    DataSet = SqlConsultas
    Left = 320
    Top = 312
  end
  object DsVendas: TDataSource
    DataSet = TabVendas
    Left = 96
    Top = 368
  end
  object DsCarrinhos: TDataSource
    DataSet = SqlCarrinhos
    Left = 320
    Top = 384
  end
  object DsEstoque: TDataSource
    DataSet = SqlEstoque
    Left = 336
    Top = 88
  end
  object SqlConsultas: TIBQuery
    Database = Projeto_Pdv
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select*From Tab_Produto')
    Left = 256
    Top = 312
    object SqlConsultasPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Origin = 'TAB_PRODUTO.PROD_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlConsultasPROD_CODIGO_BARRA: TIBStringField
      FieldName = 'PROD_CODIGO_BARRA'
      Origin = 'TAB_PRODUTO.PROD_CODIGO_BARRA'
    end
    object SqlConsultasPROD_PRODUTOS: TIBStringField
      FieldName = 'PROD_PRODUTOS'
      Origin = 'TAB_PRODUTO.PROD_PRODUTOS'
      Size = 36
    end
    object SqlConsultasPROD_QTDE_ESTOQUE: TIntegerField
      FieldName = 'PROD_QTDE_ESTOQUE'
      Origin = 'TAB_PRODUTO.PROD_QTDE_ESTOQUE'
    end
    object SqlConsultasPROD_VALOR_CUSTO: TFloatField
      FieldName = 'PROD_VALOR_CUSTO'
      Origin = 'TAB_PRODUTO.PROD_VALOR_CUSTO'
      currency = True
    end
    object SqlConsultasPROD_LUCRO: TIntegerField
      FieldName = 'PROD_LUCRO'
      Origin = 'TAB_PRODUTO.PROD_LUCRO'
    end
    object SqlConsultasPROD_VALOR_VENDA: TFloatField
      FieldName = 'PROD_VALOR_VENDA'
      Origin = 'TAB_PRODUTO.PROD_VALOR_VENDA'
      currency = True
    end
    object SqlConsultasPROD_FOTOS: TIBStringField
      FieldName = 'PROD_FOTOS'
      Origin = 'TAB_PRODUTO.PROD_FOTOS'
      Size = 70
    end
  end
  object SqlCarrinhos: TIBQuery
    Database = Projeto_Pdv
    Transaction = Transaction
    OnCalcFields = SqlCarrinhosCalcFields
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'Select * FROM Tab_Carrinhos C, Tab_Produto P'
      'Where C.CAR_PRODUTOS = P.PROD_ID')
    Left = 248
    Top = 384
    object SqlCarrinhosCAR_ID: TIntegerField
      FieldName = 'CAR_ID'
      Origin = 'TAB_CARRINHOS.CAR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCarrinhosCAR_PRODUTOS: TIntegerField
      FieldName = 'CAR_PRODUTOS'
      Origin = 'TAB_CARRINHOS.CAR_PRODUTOS'
    end
    object SqlCarrinhosCAR_QTDE: TIntegerField
      FieldName = 'CAR_QTDE'
      Origin = 'TAB_CARRINHOS.CAR_QTDE'
    end
    object SqlCarrinhosPROD_ID: TIntegerField
      FieldName = 'PROD_ID'
      Origin = 'TAB_PRODUTO.PROD_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlCarrinhosPROD_CODIGO_BARRA: TIBStringField
      FieldName = 'PROD_CODIGO_BARRA'
      Origin = 'TAB_PRODUTO.PROD_CODIGO_BARRA'
    end
    object SqlCarrinhosPROD_PRODUTOS: TIBStringField
      FieldName = 'PROD_PRODUTOS'
      Origin = 'TAB_PRODUTO.PROD_PRODUTOS'
      Size = 36
    end
    object SqlCarrinhosPROD_QTDE_ESTOQUE: TIntegerField
      FieldName = 'PROD_QTDE_ESTOQUE'
      Origin = 'TAB_PRODUTO.PROD_QTDE_ESTOQUE'
    end
    object SqlCarrinhosPROD_VALOR_CUSTO: TFloatField
      FieldName = 'PROD_VALOR_CUSTO'
      Origin = 'TAB_PRODUTO.PROD_VALOR_CUSTO'
      currency = True
    end
    object SqlCarrinhosPROD_LUCRO: TIntegerField
      FieldName = 'PROD_LUCRO'
      Origin = 'TAB_PRODUTO.PROD_LUCRO'
    end
    object SqlCarrinhosPROD_VALOR_VENDA: TFloatField
      FieldName = 'PROD_VALOR_VENDA'
      Origin = 'TAB_PRODUTO.PROD_VALOR_VENDA'
      currency = True
    end
    object SqlCarrinhosPROD_FOTOS: TIBStringField
      FieldName = 'PROD_FOTOS'
      Origin = 'TAB_PRODUTO.PROD_FOTOS'
      Size = 70
    end
    object SqlCarrinhosCAR_SUBTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CAR_SUBTOTAL'
      currency = True
      Calculated = True
    end
  end
  object SqlEstoque: TIBQuery
    Database = Projeto_Pdv
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 272
    Top = 88
  end
  object SqlProdutosAdd: TIBQuery
    Database = Projeto_Pdv
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    Left = 264
    Top = 160
  end
  object TabPagamentos: TIBTable
    Database = Projeto_Pdv
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'PAG_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PAG_DATA_PAGAMENTOS'
        DataType = ftDate
      end
      item
        Name = 'PAG_HORA_PAGAMENTOS'
        DataType = ftTime
      end
      item
        Name = 'PAG_VALOR_PAGAMENTOS'
        DataType = ftFloat
      end
      item
        Name = 'PAG_MOTIVO'
        DataType = ftWideString
        Size = 50
      end>
    IndexDefs = <
      item
        Name = 'PK_TAB_PAGAMENTOS'
        Fields = 'PAG_ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'TAB_PAGAMENTOS'
    UniDirectional = False
    Left = 24
    Top = 544
    object TabPagamentosPAG_ID: TIntegerField
      FieldName = 'PAG_ID'
    end
    object TabPagamentosPAG_DATA_PAGAMENTOS: TDateField
      DisplayLabel = 'Data do Pagamento'
      FieldName = 'PAG_DATA_PAGAMENTOS'
    end
    object TabPagamentosPAG_HORA_PAGAMENTOS: TTimeField
      DisplayLabel = 'Hora do Pagamento'
      FieldName = 'PAG_HORA_PAGAMENTOS'
    end
    object TabPagamentosPAG_VALOR_PAGAMENTOS: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'PAG_VALOR_PAGAMENTOS'
      currency = True
    end
    object TabPagamentosPAG_MOTIVO: TIBStringField
      DisplayLabel = 'Motivo'
      FieldName = 'PAG_MOTIVO'
      Size = 50
    end
  end
  object DsPagamentos: TDataSource
    DataSet = TabPagamentos
    Left = 104
    Top = 552
  end
  object DsEntradas: TDataSource
    DataSet = TabEntradas
    Left = 96
    Top = 456
  end
  object TabEntradas: TIBTable
    Database = Projeto_Pdv
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'ENT_ID'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ENT_DATA_ENTRADA'
        DataType = ftDate
      end
      item
        Name = 'ENT_HORA_ENTRADA'
        DataType = ftTime
      end
      item
        Name = 'ENT_VALOR_ENTRADA'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'PK_TAB_ENTRADA'
        Fields = 'ENT_ID'
        Options = [ixUnique]
      end>
    StoreDefs = True
    TableName = 'TAB_ENTRADA'
    UniDirectional = False
    Left = 16
    Top = 448
    object TabEntradasENT_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'ENT_ID'
    end
    object TabEntradasENT_DATA_ENTRADA: TDateField
      FieldName = 'ENT_DATA_ENTRADA'
    end
    object TabEntradasENT_HORA_ENTRADA: TTimeField
      FieldName = 'ENT_HORA_ENTRADA'
    end
    object TabEntradasENT_VALOR_ENTRADA: TFloatField
      Alignment = taLeftJustify
      FieldName = 'ENT_VALOR_ENTRADA'
      currency = True
    end
  end
  object DBPCarrinhos: TppDBPipeline
    DataSource = DsCarrinhos
    UserName = 'DBCarrinhos'
    Left = 392
    Top = 384
    object DBPCarrinhosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAR_ID'
      FieldName = 'CAR_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object DBPCarrinhosppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAR_PRODUTOS'
      FieldName = 'CAR_PRODUTOS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object DBPCarrinhosppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAR_QTDE'
      FieldName = 'CAR_QTDE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object DBPCarrinhosppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_ID'
      FieldName = 'PROD_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object DBPCarrinhosppField5: TppField
      FieldAlias = 'PROD_CODIGO_BARRA'
      FieldName = 'PROD_CODIGO_BARRA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object DBPCarrinhosppField6: TppField
      FieldAlias = 'PROD_PRODUTOS'
      FieldName = 'PROD_PRODUTOS'
      FieldLength = 36
      DisplayWidth = 36
      Position = 5
    end
    object DBPCarrinhosppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_QTDE_ESTOQUE'
      FieldName = 'PROD_QTDE_ESTOQUE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object DBPCarrinhosppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_VALOR_CUSTO'
      FieldName = 'PROD_VALOR_CUSTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object DBPCarrinhosppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_LUCRO'
      FieldName = 'PROD_LUCRO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object DBPCarrinhosppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_VALOR_VENDA'
      FieldName = 'PROD_VALOR_VENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object DBPCarrinhosppField11: TppField
      FieldAlias = 'PROD_FOTOS'
      FieldName = 'PROD_FOTOS'
      FieldLength = 70
      DisplayWidth = 70
      Position = 10
    end
    object DBPCarrinhosppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAR_SUBTOTAL'
      FieldName = 'CAR_SUBTOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
  end
  object ReportCarrinhos: TppReport
    AutoStop = False
    DataPipeline = DBPCarrinhos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279400
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Projeto_Pdv\Notas\Notas.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 488
    Top = 384
    Version = '21.02'
    mmColumnWidth = 0
    DataPipelineName = 'DBPCarrinhos'
    object ppHeaderBand1: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 40746
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label1'
        Border.mmPadding = 0
        Caption = 
          'Rua Chapada do Araripe , 896   Bairro - S'#227'o Jorge - Uberl'#226'ndia -' +
          ' MG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 50800
        mmTop = 11642
        mmWidth = 104775
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel2: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label2'
        Border.mmPadding = 0
        Caption = 'Sistema de Cadastros e Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 61119
        mmTop = 2646
        mmWidth = 72496
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel3: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label3'
        Border.mmPadding = 0
        Caption = 'Telefone: (94)99209-1409'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 43656
        mmTop = 20373
        mmWidth = 59531
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel4: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label4'
        Border.mmPadding = 0
        Caption = 'CPF: 568.369.702.63'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 112713
        mmTop = 20373
        mmWidth = 48948
        BandType = 0
        LayerName = Foreground
      end
      object ppLine1: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line1'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 11113
        mmTop = 28840
        mmWidth = 175684
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel5: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label5'
        Border.mmPadding = 0
        Caption = 'C'#243'digo de Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 11113
        mmTop = 30692
        mmWidth = 25665
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel6: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label6'
        Border.mmPadding = 0
        Caption = 'Valor Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 103717
        mmTop = 31221
        mmWidth = 19579
        BandType = 0
        LayerName = Foreground
      end
      object ppLine2: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line2'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 11113
        mmTop = 36513
        mmWidth = 175684
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel7: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label7'
        Border.mmPadding = 0
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 129382
        mmTop = 31221
        mmWidth = 6879
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel8: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label8'
        Border.mmPadding = 0
        Caption = 'Sub-Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 145257
        mmTop = 31221
        mmWidth = 14023
        BandType = 0
        LayerName = Foreground
      end
      object ppLabel9: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label9'
        Border.mmPadding = 0
        Caption = 'Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 46831
        mmTop = 30692
        mmWidth = 13230
        BandType = 0
        LayerName = Foreground
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText1'
        Border.mmPadding = 0
        DataField = 'PROD_CODIGO_BARRA'
        DataPipeline = DBPCarrinhos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPCarrinhos'
        mmHeight = 4498
        mmLeft = 11113
        mmTop = 529
        mmWidth = 25665
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText2: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText2'
        Border.mmPadding = 0
        DataField = 'PROD_VALOR_VENDA'
        DataPipeline = DBPCarrinhos
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPCarrinhos'
        mmHeight = 4498
        mmLeft = 103717
        mmTop = 1058
        mmWidth = 19579
        BandType = 4
        LayerName = Foreground
      end
      object ppLine3: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line3'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 11113
        mmTop = 7673
        mmWidth = 175684
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText3: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText3'
        Border.mmPadding = 0
        DataField = 'CAR_QTDE'
        DataPipeline = DBPCarrinhos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPCarrinhos'
        mmHeight = 4498
        mmLeft = 129382
        mmTop = 1588
        mmWidth = 12435
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText4: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText4'
        Border.mmPadding = 0
        DataField = 'CAR_SUBTOTAL'
        DataPipeline = DBPCarrinhos
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPCarrinhos'
        mmHeight = 4498
        mmLeft = 145257
        mmTop = 1058
        mmWidth = 17198
        BandType = 4
        LayerName = Foreground
      end
      object ppDBText5: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText5'
        Border.mmPadding = 0
        DataField = 'PROD_PRODUTOS'
        DataPipeline = DBPCarrinhos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPCarrinhos'
        mmHeight = 4498
        mmLeft = 46831
        mmTop = 529
        mmWidth = 53181
        BandType = 4
        LayerName = Foreground
      end
    end
    object ppFooterBand1: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 23813
      mmPrintPosition = 0
      object ppLabel10: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label10'
        Border.mmPadding = 0
        Caption = 'Data da Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 11113
        mmTop = 3440
        mmWidth = 21431
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel11: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label11'
        Border.mmPadding = 0
        Caption = 'Hora da Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 46831
        mmTop = 3440
        mmWidth = 21696
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel12: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label12'
        Border.mmPadding = 0
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 75406
        mmTop = 3440
        mmWidth = 10319
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel13: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label13'
        Border.mmPadding = 0
        Caption = 'Consumidor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 75406
        mmTop = 8467
        mmWidth = 24871
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel14: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label14'
        Border.mmPadding = 0
        Caption = 'Funcion'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 106098
        mmTop = 3440
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppLabel15: TppLabel
        DesignLayer = ppDesignLayer1
        UserName = 'Label15'
        Border.mmPadding = 0
        Caption = 'Total da Nota'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3969
        mmLeft = 162454
        mmTop = 3440
        mmWidth = 19315
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText6: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText6'
        Border.mmPadding = 0
        DataField = 'VEN_DATA_VENDA'
        DataPipeline = DBPVendas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBPVendas'
        mmHeight = 4498
        mmLeft = 11113
        mmTop = 8467
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText7: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText7'
        Border.mmPadding = 0
        DataField = 'VEN_HORA_VENDA'
        DataPipeline = DBPVendas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBPVendas'
        mmHeight = 4498
        mmLeft = 46831
        mmTop = 7938
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText8: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText8'
        Border.mmPadding = 0
        DataField = 'FUNC_NOME'
        DataPipeline = DBPAcesso
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBPAcesso'
        mmHeight = 4498
        mmLeft = 106098
        mmTop = 8467
        mmWidth = 53181
        BandType = 8
        LayerName = Foreground
      end
      object ppDBText9: TppDBText
        DesignLayer = ppDesignLayer1
        UserName = 'DBText9'
        Border.mmPadding = 0
        DataField = 'VEN_TOTAL_VENDA'
        DataPipeline = DBPVendas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBPVendas'
        mmHeight = 4498
        mmLeft = 162454
        mmTop = 8467
        mmWidth = 17198
        BandType = 8
        LayerName = Foreground
      end
      object ppLine4: TppLine
        DesignLayer = ppDesignLayer1
        UserName = 'Line4'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 11113
        mmTop = 794
        mmWidth = 175684
        BandType = 8
        LayerName = Foreground
      end
    end
    object ppDesignLayers1: TppDesignLayers
      object ppDesignLayer1: TppDesignLayer
        UserName = 'Foreground'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object DBPVendas: TppDBPipeline
    DataSource = DsVendas
    UserName = 'DBPVendas'
    Left = 168
    Top = 368
    object DBPVendasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'VEN_ID'
      FieldName = 'VEN_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object DBPVendasppField2: TppField
      FieldAlias = 'VEN_NUMERO_NOTA'
      FieldName = 'VEN_NUMERO_NOTA'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object DBPVendasppField3: TppField
      FieldAlias = 'VEN_DATA_VENDA'
      FieldName = 'VEN_DATA_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object DBPVendasppField4: TppField
      FieldAlias = 'VEN_HORA_VENDA'
      FieldName = 'VEN_HORA_VENDA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 3
    end
    object DBPVendasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'VEN_TOTAL_VENDA'
      FieldName = 'VEN_TOTAL_VENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object DBPVendasppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VEN_PAGAMENTOS'
      FieldName = 'VEN_PAGAMENTOS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object DBPVendasppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'VEN_TROCO'
      FieldName = 'VEN_TROCO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object DBPVendasppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_ID'
      FieldName = 'CLI_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object DBPVendasppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'FUNC_ID'
      FieldName = 'FUNC_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object DBPVendasppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'FORMAS_ID'
      FieldName = 'FORMAS_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
  end
  object TabCaixas: TIBTable
    Database = Projeto_Pdv
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TAB_CAIXAS'
    UniDirectional = False
    Left = 16
    Top = 288
    object TabCaixasCAIX_ID: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'CAIX_ID'
    end
    object TabCaixasCAIX_DATA_ABERTURA: TDateField
      FieldName = 'CAIX_DATA_ABERTURA'
    end
    object TabCaixasCAIX_HORA_ABERTURA: TTimeField
      FieldName = 'CAIX_HORA_ABERTURA'
    end
    object TabCaixasCAIX_VALOR_INICIAL: TFloatField
      Alignment = taLeftJustify
      FieldName = 'CAIX_VALOR_INICIAL'
      currency = True
    end
    object TabCaixasCAIX_HORA_FECHAMENTO: TTimeField
      FieldName = 'CAIX_HORA_FECHAMENTO'
    end
    object TabCaixasCAIX_TOTAL_PAGAMENTOS: TFloatField
      Alignment = taLeftJustify
      FieldName = 'CAIX_TOTAL_PAGAMENTOS'
      currency = True
    end
    object TabCaixasCAIX_TOTAL_ENTRADAS: TFloatField
      Alignment = taLeftJustify
      FieldName = 'CAIX_TOTAL_ENTRADAS'
      currency = True
    end
    object TabCaixasCAIX_TOTAL_FATURAMENTO: TFloatField
      Alignment = taLeftJustify
      FieldName = 'CAIX_TOTAL_FATURAMENTO'
      currency = True
    end
  end
  object DsCaixas: TDataSource
    DataSet = TabCaixas
    Left = 104
    Top = 288
  end
  object SqlAcesso: TIBQuery
    Database = Projeto_Pdv
    Transaction = Transaction
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from TAB_FUNCIONARIO'
      'WHERE FUNC_LOGIN = :Nome and FUNC_SENHA = :Senha')
    Left = 256
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'Senha'
        ParamType = ptUnknown
      end>
    object SqlAcessoFUNC_ID: TIntegerField
      FieldName = 'FUNC_ID'
      Origin = 'TAB_FUNCIONARIO.FUNC_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlAcessoFUNC_NOME: TIBStringField
      FieldName = 'FUNC_NOME'
      Origin = 'TAB_FUNCIONARIO.FUNC_NOME'
      Size = 35
    end
    object SqlAcessoFUNC_CARGO: TIBStringField
      FieldName = 'FUNC_CARGO'
      Origin = 'TAB_FUNCIONARIO.FUNC_CARGO'
      Size = 35
    end
    object SqlAcessoFUNC_LOGIN: TIBStringField
      FieldName = 'FUNC_LOGIN'
      Origin = 'TAB_FUNCIONARIO.FUNC_LOGIN'
      FixedChar = True
      Size = 15
    end
    object SqlAcessoFUNC_SENHA: TIBStringField
      FieldName = 'FUNC_SENHA'
      Origin = 'TAB_FUNCIONARIO.FUNC_SENHA'
      FixedChar = True
      Size = 15
    end
    object SqlAcessoFUNC_NIVEL: TIntegerField
      FieldName = 'FUNC_NIVEL'
      Origin = 'TAB_FUNCIONARIO.FUNC_NIVEL'
    end
    object SqlAcessoFUNC_FOTOS: TIBStringField
      FieldName = 'FUNC_FOTOS'
      Origin = 'TAB_FUNCIONARIO.FUNC_FOTOS'
      Size = 70
    end
  end
  object DsAcesso: TDataSource
    DataSet = SqlAcesso
    Left = 320
    Top = 232
  end
  object DBPAcesso: TppDBPipeline
    DataSource = DsAcesso
    UserName = 'DBPAcesso'
    Left = 392
    Top = 232
    object DBPAcessoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'FUNC_ID'
      FieldName = 'FUNC_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object DBPAcessoppField2: TppField
      FieldAlias = 'FUNC_NOME'
      FieldName = 'FUNC_NOME'
      FieldLength = 35
      DisplayWidth = 35
      Position = 1
    end
    object DBPAcessoppField3: TppField
      FieldAlias = 'FUNC_CARGO'
      FieldName = 'FUNC_CARGO'
      FieldLength = 35
      DisplayWidth = 35
      Position = 2
    end
    object DBPAcessoppField4: TppField
      FieldAlias = 'FUNC_LOGIN'
      FieldName = 'FUNC_LOGIN'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object DBPAcessoppField5: TppField
      FieldAlias = 'FUNC_SENHA'
      FieldName = 'FUNC_SENHA'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object DBPAcessoppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'FUNC_NIVEL'
      FieldName = 'FUNC_NIVEL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object DBPAcessoppField7: TppField
      FieldAlias = 'FUNC_FOTOS'
      FieldName = 'FUNC_FOTOS'
      FieldLength = 70
      DisplayWidth = 70
      Position = 6
    end
  end
  object DBPEntradas: TppDBPipeline
    DataSource = DsEntradas
    UserName = 'DBPEntradas'
    Left = 168
    Top = 456
    object DBPEntradasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENT_ID'
      FieldName = 'ENT_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object DBPEntradasppField2: TppField
      FieldAlias = 'ENT_DATA_ENTRADA'
      FieldName = 'ENT_DATA_ENTRADA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object DBPEntradasppField3: TppField
      FieldAlias = 'ENT_HORA_ENTRADA'
      FieldName = 'ENT_HORA_ENTRADA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 2
    end
    object DBPEntradasppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENT_VALOR_ENTRADA'
      FieldName = 'ENT_VALOR_ENTRADA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
  end
  object ReportEntradas: TppReport
    AutoStop = False
    DataPipeline = DBPEntradas
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279400
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Projeto_Pdv\Notas\Entradas.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 256
    Top = 456
    Version = '21.02'
    mmColumnWidth = 0
    DataPipelineName = 'DBPEntradas'
    object ppHeaderBand2: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 56621
      mmPrintPosition = 0
      object ppLabel16: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label16'
        Border.mmPadding = 0
        Caption = 'Sistema de Cadastros e Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 61119
        mmTop = 2646
        mmWidth = 72496
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel17: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label17'
        Border.mmPadding = 0
        Caption = 
          'Rua Chapada do Araripe , 896   Bairro - S'#227'o Jorge - Uberl'#226'ndia -' +
          ' MG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 50800
        mmTop = 11642
        mmWidth = 104775
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel18: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label18'
        Border.mmPadding = 0
        Caption = 'Telefone: (94)99209-1409'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 43656
        mmTop = 20373
        mmWidth = 59531
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel19: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label19'
        Border.mmPadding = 0
        Caption = 'CPF: 568.369.702.63'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 112713
        mmTop = 20373
        mmWidth = 48948
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel20: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label20'
        Border.mmPadding = 0
        Caption = 'Relat'#243'rios de Vendas do Dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7144
        mmLeft = 35454
        mmTop = 33867
        mmWidth = 80698
        BandType = 0
        LayerName = Foreground1
      end
      object ppDBText10: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText10'
        Border.mmPadding = 0
        DataField = 'ENT_DATA_ENTRADA'
        DataPipeline = DBPEntradas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPEntradas'
        mmHeight = 6350
        mmLeft = 119592
        mmTop = 33867
        mmWidth = 42069
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine5: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line5'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 27781
        mmTop = 43921
        mmWidth = 133879
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel21: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label21'
        Border.mmPadding = 0
        Caption = 'Data da Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 27781
        mmTop = 47361
        mmWidth = 23548
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel22: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label22'
        Border.mmPadding = 0
        Caption = 'Hora da Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 62706
        mmTop = 47361
        mmWidth = 23813
        BandType = 0
        LayerName = Foreground1
      end
      object ppLabel23: TppLabel
        DesignLayer = ppDesignLayer2
        UserName = 'Label23'
        Border.mmPadding = 0
        Caption = 'Valor da Entrada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 3968
        mmLeft = 99219
        mmTop = 47361
        mmWidth = 24077
        BandType = 0
        LayerName = Foreground1
      end
      object ppLine6: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line6'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 27781
        mmTop = 55033
        mmWidth = 133879
        BandType = 0
        LayerName = Foreground1
      end
    end
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 8467
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText11'
        Border.mmPadding = 0
        DataField = 'ENT_DATA_ENTRADA'
        DataPipeline = DBPEntradas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPEntradas'
        mmHeight = 4498
        mmLeft = 27781
        mmTop = 1055
        mmWidth = 23548
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText12: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText12'
        Border.mmPadding = 0
        DataField = 'ENT_HORA_ENTRADA'
        DataPipeline = DBPEntradas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPEntradas'
        mmHeight = 4498
        mmLeft = 62706
        mmTop = 1055
        mmWidth = 23813
        BandType = 4
        LayerName = Foreground1
      end
      object ppDBText13: TppDBText
        DesignLayer = ppDesignLayer2
        UserName = 'DBText13'
        Border.mmPadding = 0
        DataField = 'ENT_VALOR_ENTRADA'
        DataPipeline = DBPEntradas
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPEntradas'
        mmHeight = 4498
        mmLeft = 99219
        mmTop = 1055
        mmWidth = 24077
        BandType = 4
        LayerName = Foreground1
      end
      object ppLine7: TppLine
        DesignLayer = ppDesignLayer2
        UserName = 'Line7'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 27781
        mmTop = 7144
        mmWidth = 133879
        BandType = 4
        LayerName = Foreground1
      end
    end
    object ppFooterBand2: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppDesignLayers2: TppDesignLayers
      object ppDesignLayer2: TppDesignLayer
        UserName = 'Foreground1'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object DBPPagamentos: TppDBPipeline
    DataSource = DsPagamentos
    UserName = 'DBPPagamentos'
    Left = 192
    Top = 552
    object DBPPagamentosppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'PAG_ID'
      FieldName = 'PAG_ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object DBPPagamentosppField2: TppField
      FieldAlias = 'Data do Pagamento'
      FieldName = 'PAG_DATA_PAGAMENTOS'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object DBPPagamentosppField3: TppField
      FieldAlias = 'Hora do Pagamento'
      FieldName = 'PAG_HORA_PAGAMENTOS'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 2
    end
    object DBPPagamentosppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'Valor Pago'
      FieldName = 'PAG_VALOR_PAGAMENTOS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object DBPPagamentosppField5: TppField
      FieldAlias = 'Motivo'
      FieldName = 'PAG_MOTIVO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
  end
  object ReportPagamentos: TppReport
    AutoStop = False
    DataPipeline = DBPPagamentos
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 279400
    PrinterSetup.mmPaperWidth = 215900
    PrinterSetup.PaperSize = 1
    Template.FileName = 'C:\Projeto_Pdv\Notas\Pagamentos.rtm'
    ArchiveFileName = '($MyDocuments)\ReportArchive.raf'
    DeviceType = 'Screen'
    DefaultFileDeviceType = 'PDF'
    EmailSettings.ReportFormat = 'PDF'
    EmailSettings.ConnectionSettings.MailService = 'SMTP'
    EmailSettings.ConnectionSettings.WebMail.GmailSettings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.WebMail.Outlook365Settings.OAuth2.RedirectPort = 0
    EmailSettings.ConnectionSettings.EnableMultiPlugin = False
    LanguageID = 'Default'
    OpenFile = False
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    ThumbnailSettings.Enabled = True
    ThumbnailSettings.Visible = True
    ThumbnailSettings.DeadSpace = 30
    ThumbnailSettings.PageHighlight.Width = 3
    ThumbnailSettings.ThumbnailSize = tsSmall
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.AllowExtract = True
    PDFSettings.EncryptSettings.AllowAssemble = True
    PDFSettings.EncryptSettings.AllowQualityPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.EncryptSettings.KeyLength = kl40Bit
    PDFSettings.EncryptSettings.EncryptionType = etRC4
    PDFSettings.DigitalSignatureSettings.SignPDF = False
    PDFSettings.FontEncoding = feAnsi
    PDFSettings.ImageCompressionLevel = 25
    PDFSettings.PDFAFormat = pafNone
    PreviewFormSettings.PageBorder.mmPadding = 0
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextFileName = '($MyDocuments)\Report.pdf'
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    XLSSettings.AppName = 'ReportBuilder'
    XLSSettings.Author = 'ReportBuilder'
    XLSSettings.Subject = 'Report'
    XLSSettings.Title = 'Report'
    XLSSettings.WorksheetName = 'Report'
    CloudDriveSettings.DropBoxSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.DropBoxSettings.DirectorySupport = True
    CloudDriveSettings.GoogleDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.GoogleDriveSettings.DirectorySupport = False
    CloudDriveSettings.OneDriveSettings.OAuth2.RedirectPort = 0
    CloudDriveSettings.OneDriveSettings.DirectorySupport = True
    Left = 296
    Top = 552
    Version = '21.02'
    mmColumnWidth = 0
    DataPipelineName = 'DBPPagamentos'
    object ppHeaderBand3: TppHeaderBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 51858
      mmPrintPosition = 0
      object ppLabel24: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label24'
        Border.mmPadding = 0
        Caption = 'Sistema de Cadastros e Vendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 61119
        mmTop = 2646
        mmWidth = 72496
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel25: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label25'
        Border.mmPadding = 0
        Caption = 
          'Rua Chapada do Araripe , 896   Bairro - S'#227'o Jorge - Uberl'#226'ndia -' +
          ' MG'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 50800
        mmTop = 11642
        mmWidth = 104775
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel26: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label26'
        Border.mmPadding = 0
        Caption = 'Telefone: (94)99209-1409'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 43656
        mmTop = 20373
        mmWidth = 59531
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel27: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label27'
        Border.mmPadding = 0
        Caption = 'CPF: 568.369.702.63'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 5821
        mmLeft = 112713
        mmTop = 20373
        mmWidth = 48948
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel28: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label201'
        Border.mmPadding = 0
        Caption = 'Relat'#243'rios de Pagamentos/Sa'#237'das do Dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 7144
        mmLeft = 21696
        mmTop = 31485
        mmWidth = 116417
        BandType = 0
        LayerName = Foreground2
      end
      object ppDBText14: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText14'
        Border.mmPadding = 0
        DataField = 'PAG_DATA_PAGAMENTOS'
        DataPipeline = DBPPagamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 18
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'DBPPagamentos'
        mmHeight = 7144
        mmLeft = 140759
        mmTop = 31485
        mmWidth = 33867
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine8: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line8'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 21696
        mmTop = 41540
        mmWidth = 152929
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel29: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label29'
        Border.mmPadding = 0
        Caption = 'Data do Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 43921
        mmWidth = 30427
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel30: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label30'
        Border.mmPadding = 0
        Caption = 'Hora do Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 57944
        mmTop = 43921
        mmWidth = 30427
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel31: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label31'
        Border.mmPadding = 0
        Caption = 'Valor do Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 94721
        mmTop = 43921
        mmWidth = 31221
        BandType = 0
        LayerName = Foreground2
      end
      object ppLabel32: TppLabel
        DesignLayer = ppDesignLayer3
        UserName = 'Label32'
        Border.mmPadding = 0
        Caption = 'Motivo do Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        FormFieldSettings.FormSubmitInfo.SubmitMethod = fstPost
        FormFieldSettings.FormFieldType = fftNone
        Transparent = True
        mmHeight = 4233
        mmLeft = 131234
        mmTop = 43921
        mmWidth = 33073
        BandType = 0
        LayerName = Foreground2
      end
      object ppLine9: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line9'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 21696
        mmTop = 49477
        mmWidth = 152929
        BandType = 0
        LayerName = Foreground2
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background2.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 10848
      mmPrintPosition = 0
      object ppDBText15: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText15'
        Border.mmPadding = 0
        DataField = 'PAG_DATA_PAGAMENTOS'
        DataPipeline = DBPPagamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPPagamentos'
        mmHeight = 4498
        mmLeft = 21696
        mmTop = 2117
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText16: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText16'
        Border.mmPadding = 0
        DataField = 'PAG_HORA_PAGAMENTOS'
        DataPipeline = DBPPagamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPPagamentos'
        mmHeight = 4498
        mmLeft = 57944
        mmTop = 2117
        mmWidth = 30427
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText17: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText17'
        Border.mmPadding = 0
        DataField = 'PAG_VALOR_PAGAMENTOS'
        DataPipeline = DBPPagamentos
        DisplayFormat = '$#,0.00;($#,0.00)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPPagamentos'
        mmHeight = 4498
        mmLeft = 94721
        mmTop = 2117
        mmWidth = 31221
        BandType = 4
        LayerName = Foreground2
      end
      object ppDBText18: TppDBText
        DesignLayer = ppDesignLayer3
        UserName = 'DBText18'
        Border.mmPadding = 0
        DataField = 'PAG_MOTIVO'
        DataPipeline = DBPPagamentos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'DBPPagamentos'
        mmHeight = 4498
        mmLeft = 131234
        mmTop = 2117
        mmWidth = 43392
        BandType = 4
        LayerName = Foreground2
      end
      object ppLine10: TppLine
        DesignLayer = ppDesignLayer3
        UserName = 'Line10'
        Border.mmPadding = 0
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 21696
        mmTop = 8731
        mmWidth = 152929
        BandType = 4
        LayerName = Foreground2
      end
    end
    object ppFooterBand3: TppFooterBand
      Background.Brush.Style = bsClear
      Border.mmPadding = 0
      mmBottomOffset = 0
      mmHeight = 23020
      mmPrintPosition = 0
    end
    object ppDesignLayers3: TppDesignLayers
      object ppDesignLayer3: TppDesignLayer
        UserName = 'Foreground2'
        LayerType = ltBanded
        Index = 0
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object SqlPagamentos: TIBQuery
    Database = Projeto_Pdv
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from TAB_PAGAMENTOS')
    Left = 488
    Top = 48
    object SqlPagamentosPAG_ID: TIntegerField
      FieldName = 'PAG_ID'
      Origin = 'TAB_PAGAMENTOS.PAG_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlPagamentosPAG_DATA_PAGAMENTOS: TDateField
      FieldName = 'PAG_DATA_PAGAMENTOS'
      Origin = 'TAB_PAGAMENTOS.PAG_DATA_PAGAMENTOS'
    end
    object SqlPagamentosPAG_HORA_PAGAMENTOS: TTimeField
      FieldName = 'PAG_HORA_PAGAMENTOS'
      Origin = 'TAB_PAGAMENTOS.PAG_HORA_PAGAMENTOS'
    end
    object SqlPagamentosPAG_VALOR_PAGAMENTOS: TFloatField
      FieldName = 'PAG_VALOR_PAGAMENTOS'
      Origin = 'TAB_PAGAMENTOS.PAG_VALOR_PAGAMENTOS'
    end
    object SqlPagamentosPAG_MOTIVO: TIBStringField
      FieldName = 'PAG_MOTIVO'
      Origin = 'TAB_PAGAMENTOS.PAG_MOTIVO'
      Size = 50
    end
  end
  object SqlEntradas: TIBQuery
    Database = Projeto_Pdv
    Transaction = Transaction
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from TAB_ENTRADA')
    Left = 480
    Top = 128
    object SqlEntradasENT_ID: TIntegerField
      FieldName = 'ENT_ID'
      Origin = 'TAB_ENTRADA.ENT_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SqlEntradasENT_DATA_ENTRADA: TDateField
      FieldName = 'ENT_DATA_ENTRADA'
      Origin = 'TAB_ENTRADA.ENT_DATA_ENTRADA'
    end
    object SqlEntradasENT_HORA_ENTRADA: TTimeField
      FieldName = 'ENT_HORA_ENTRADA'
      Origin = 'TAB_ENTRADA.ENT_HORA_ENTRADA'
    end
    object SqlEntradasENT_VALOR_ENTRADA: TFloatField
      FieldName = 'ENT_VALOR_ENTRADA'
      Origin = 'TAB_ENTRADA.ENT_VALOR_ENTRADA'
    end
  end
end
