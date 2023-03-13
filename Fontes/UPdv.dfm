object FrmPdv: TFrmPdv
  Left = 0
  Top = 0
  Align = alCustom
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Sistema de Vendas (PDV)'
  ClientHeight = 516
  ClientWidth = 931
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PanelDescricao: TPanel
    Left = 0
    Top = 0
    Width = 931
    Height = 49
    Margins.Left = 0
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object PanelCaixa: TPanel
    AlignWithMargins = True
    Left = 8
    Top = 472
    Width = 920
    Height = 41
    Margins.Left = 8
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 136
    Width = 925
    Height = 3
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 2
  end
  object Panel2: TPanel
    Left = 0
    Top = 172
    Width = 924
    Height = 3
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 3
  end
  object Panel3: TPanel
    Left = 0
    Top = 49
    Width = 931
    Height = 81
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 4
    object Label3: TLabel
      Left = 280
      Top = 6
      Width = 162
      Height = 33
      Caption = 'Valor Unit'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 536
      Top = 6
      Width = 57
      Height = 33
      Caption = 'Qtde'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 751
      Top = 6
      Width = 161
      Height = 33
      Caption = 'Total da Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 203
      Height = 33
      Caption = 'C'#243'digo de Barras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object EditCodigoBarra: TEdit
      Left = 16
      Top = 42
      Width = 203
      Height = 39
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnKeyPress = EditCodigoBarraKeyPress
    end
    object DBEdit1: TDBEdit
      Left = 280
      Top = 42
      Width = 162
      Height = 39
      Ctl3D = False
      DataField = 'PROD_VALOR_VENDA'
      DataSource = DmDados.DsConsulta
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object EditQtde: TEdit
      Left = 536
      Top = 42
      Width = 57
      Height = 39
      Alignment = taCenter
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit2: TDBEdit
      Left = 751
      Top = 42
      Width = 162
      Height = 39
      Ctl3D = False
      DataField = 'VEN_TOTAL_VENDA'
      DataSource = DmDados.DsVendas
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
  end
  object pnlDataHora: TPanel
    Left = 0
    Top = 130
    Width = 931
    Height = 55
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 5
    object DBText3: TDBText
      Left = 616
      Top = 35
      Width = 297
      Height = 14
      DataField = 'FUNC_NOME'
      DataSource = DmDados.DsAcesso
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 616
      Top = 6
      Width = 97
      Height = 23
      Caption = 'Funcion'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelConsumidor: TLabel
      Left = 448
      Top = 6
      Width = 143
      Height = 23
      Caption = 'LabelConsumidor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 448
      Top = 36
      Width = 86
      Height = 19
      Caption = 'Consumidor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 176
      Top = 6
      Width = 111
      Height = 23
      Caption = 'Data da Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 176
      Top = 32
      Width = 65
      Height = 17
      DataField = 'VEN_DATA_VENDA'
      DataSource = DmDados.DsVendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 304
      Top = 32
      Width = 65
      Height = 17
      DataField = 'VEN_HORA_VENDA'
      DataSource = DmDados.DsVendas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 304
      Top = 6
      Width = 112
      Height = 23
      Caption = 'Hora da Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 16
      Top = 6
      Width = 139
      Height = 23
      Caption = 'N'#250'mero da Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelNumeroNota: TLabel
      Left = 16
      Top = 28
      Width = 5
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object pnlPnlImagem: TPanel
    Left = 640
    Top = 185
    Width = 291
    Height = 284
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 6
    object pnlImagem: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 285
      Height = 278
      Align = alTop
      TabOrder = 0
      object FotosProdutos: TImage
        Left = 1
        Top = 1
        Width = 283
        Height = 276
        Align = alClient
        Picture.Data = {
          0A544A504547496D6167650F0C0000FFD8FFE000104A46494600010100000100
          010000FFDB00840009060712131015100F121610111710151715151210101515
          16151515161715121515181D2822181A251B161522312125292B2E2E2E191F35
          38362D37282D2E2B010A0A0A0D0D0D150F0F152D1D151D2B2B2B2D2B2D2B372B
          2D2D2B2B2B2B2B2B2B2B2D2D2B2B2B2B2B2D372B2D2D2D2B372D2B2B2D2D2D2B
          2B2D2B2D37372B2B2DFFC000110800E000E003012200021101031101FFC4001B
          00010002030101000000000000000000000004060103050207FFC4003F100002
          0200030309060307020700000000000102030405111221310613224151617181
          B132526291A1C14272D114233343A2C2F0B2F15363839293D2E1FFC400170101
          01010100000000000000000000000000010203FFC40017110101010100000000
          000000000000000000011131FFDA000C03010002110311003F00FB8800000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000D91E78DA97B564178CE2BEE0480468E614BE16D6FC2C87EA488C93D
          E9EBE0C0C8000000000000000000000000000000000000000035627110AE2E76
          49462B8B7FE6F654F1F9B59887B316EAA7BBDB9AEF7D4BBBD42C8EE63B3EAA0F
          621ADD67BB5EFD3F34B8220BC462ADE338E1E3D905B73F393DDF221612B8C569
          1492EEFB9D1A664562191D72DF6CACB9FF00CCB64FE8B4265792E197F261E6B5
          F5335D86F8D854699E4F867FC9879452F421DB90D0B7C14AA7DB5D934FEBA9D3
          761A6CB00E6ECE26AFE1DFCEAF76E5ABFF00BD6F2461B9451D543110744BB5EF
          83F092E062D990311A34D35AAEC6455AA324D6A9EA9F06B83325270B8AB30EF5
          A5ED57AEFAA4F778C5F53FF3796ACB332AEF86D56F7AF6A2FDA8BEC6BEE54B13
          0001000000000000000000000000035627111AE0E737B314B56FFCEB36949E53
          E67CED9CD45FEEE0F7FC535C5F82E1F30B26A3E63984B113DA9EEAD3E843B3E2
          976B15C887166E8488D3A354C9B87D5BD229B7DC78CA32B959D39746BFACBC3B
          BBCB2D34C60B482D17F9C7B425A834E0A7F89A8FD59263845DAFE84905651DE1
          576BFA1A2DC14BF0B4FC7713C015DC54251F6935E9F3205B32C79AE3A35C7469
          4A4D6E8BDEBC5F7153B2C2351E6D91A2BBE55CD5B53D99AF94975C64BAD199C8
          D126157CCA7328DF5EDC773E128BE317D9E1DE4D3E7796660E8B558B7C5EE9C7
          B63DBE2BA8FA155629454A2F58B49A6BAD3DE9959B31E8001000000000000000
          000001CCE5163F99A24E2F49CBA30F17D7E4B5650627739658ADABD56B8423BF
          F34B7FA6C9C244ADC6D8B3B5C9ECB39D96D4FF008717BFE27EEFEBFF00D38B4C
          1CA4A31DF26D25E2DE88FA2E030AAAAE35C7825C7B5F5BF36216B7A5A6E5B919
          00AC0000040CD3328D51ED9BE0BEEFB8C66F9A4698F6D8D7463FDCFBBD4A7DF8
          894A4E527AC9BDEC2C8DB7E21C9B949EADF164794CF0E67872234CCA46B932D7
          90E47B2B9DBD6B26BA306BD94FAE4BB7BBABC7857738C1F3374ABEAE31FCAF87
          E9E40D4265AF9198ED632A24F7C3A51FCADEF5E4FD4A9B64BC9B15CDE22B9F05
          B5B32FCB2DCFD75F2057D1800560000000000000000000C3607CD733BB6EFB67
          DB64B4F04F45F4488E798B3265D1DCE4961F6B11B4F8422E5E6FA2BD5FC8BC15
          5E43C3F8B2FC8BFD4FEE8B51A8C5E800081CDCE7368D11F7AC6BA31FEE9777A9
          8CEF378D11D174AC6BA31FEE9777AFA51EFBE53939CDED49BD5B64591B6EC44A
          72729BDA937BDB35B91AF531A86DEDC8B5F27B23D9D2EB974F8C62FF000FC4FE
          2F4F1E18E4EE45B1A5D72E9F18C5FE1EF7F17A78F0B1066D0AC72D70FD1AED5D
          4DC5F9AD57A3F996738FCAC86B8593EC941FF525F72A4EA8879970321996DF4C
          C05DB75427EF5717F349920E6726A5AE12AFCAD7CA4D7D8E99A7300000000000
          000000C346401F2A48C92733A762FB21D964B4F06F55F4688C65D16AE43CFF00
          8B1FC8FF00D4BEC5A8A3F24311B388D97C2706BCD7497A3F99783518BD0E6677
          9BC688E8BA5635D18FF74BBBD7D19DE6F1A23A2E958D7463FDD2EEF5F4A35F74
          A72739BDA937AB6C8485F74A72739BDA937AB6CF0011B0B6F27722D8D2EB974F
          8C62FF000FC4FE2F4F1E0E4F645B1A5D72E9F18C5FE1F89FC5E9E3C2C4566D00
          056438FCAC9E9859AED9417F5A7F63B056396D88E8D752E2E4E4FC12D17ABF90
          59D548C1931232DBE85C9A8E984ABF2B7F3937F73A647CBE9D8AAB87BB5C579A
          4B5241A730000000000000000000052796585D9BD58B84E3FD51DCFE9B2708BF
          F29301CF50D456B38F4A3DED715E6B5FA140892B71B28B1C64A71DD28B4D78A7
          AA2EB8DE50C234C670E94E71D631D7875372EE4F55DFA14948CA40B1EEFB6539
          39CDED49BD5B67948F6A27B510AD6A25AF93F91EC696DCBA7C6317F87BDFC5E9
          E3C3D643926C696DABA7C6317F87BDFC5E9E3C3BE19B400159000061BD37BDC8
          F9E6758DE7AE958BD9E11FCAB87CF7BF33BFCA8CDB73A2B7BDFF0011AEA5EE78
          F6FC8AA344AD48F04BC9B0BCE622B8715B5ACBF2C77BF4D3CC8AD16CE45E0748
          CAF92DF2E8C3F2A7BDF9BF40B6ACC002B000000000000000000000147E53E57C
          D59CE457EEA6FCA33E2D783E2BCFB0BC1AB15868D9075CD6B16B46BEEBBC2CB8
          F9B246C8C4939965D2C3CF627BE0FD89F535D8FB19AE11236C46259B93B95C74
          5749A93FC2934D47BDFC5E9E9C0840998594A0F583717DDF7ED0957307130F9B
          CD7B7152EF5B992E39B43AE325E4BF52B38E80203CD61D927E4BF5235D9C3FC1
          0D3BE4F5FA2098EBCA492D5BD176B2BD9BE7DB9C287E33FF00D7F5FF00721E32
          F9D9EDC9B5D9C17C8813806A4439235C9126713C5544AC9AAEB5B537F24BDE6F
          A911A672CC04AFB5571DCB8CDFBB1EBF33E87556A31518AD2292497625B92226
          4F96468AF623BE4F7CA5D727FA76227158B40004000000000000000000000000
          69C5E161641C2C8A945F53F55D8CA8663945943DA5ADB4FBCBDA8AF897677FA1
          75016551F0CD496B17AA265759D4C7727AA9BDBADBA2CF7A1C1F8C783FA1CE9E
          131557B55ABE3EF56F4979C5F1F222EB742A36AA48B0CDEA4F4B76E97D965725
          E9A932BCCB0EFF009D0F39A5EA061D26A9D46F966147FC6AFCA717E844B738A3
          5D2327397642126FD34035D95916E8A4B57B9779292C45BFC2A1C17BD73D9FE9
          E24CC2F26E3AED6266EE7EEFB305E4B881C1C2612CBE5A52B48EBBEC92E8AF0E
          D65BB2ACAEBA23B305AC9FB527ED49F7F77713210492514925C125A25E08F454
          B40004000000000000000000000030E4B54B5DEF82D77BD38E80640000000000
          062514F735AAEF234F2DA5F1A6B7FF004E1FA1225625C5A5C78B4B8713D01123
          95D0B8535FFE387E848AEB8C56914A2BB925E87B000189492E2F4F17DBD46400
          0D8000188C93E0F5DFA6E7D6BA80C8000000000000000000015DE52D8E37D528
          BD24B0D8C69F6355C1A6588014BC463711184E5FB4CDB8E06AC46F557B72724D
          7B3EC74787D4938ACDE7FB64610B2497ED15D73849D696CCA1C630D9DA716DAE
          9B6B7EE5A96B00537079ADCE74FEFA53B652BF9DA1A8690942BB1C2BD12D63BD
          2E2F7E9A9A69CDB10F0F64F9F8B6ABA9BD2C8CECAEC95B04F582AE3B0B4724E0
          F5D3445A68CA6B8D8ACD67271DAD853B6728C36B73D94DEEDDBBB9702781539E
          2AE85B35CFCE4ABC6D15A52556F8DAA0E4A5A456BED3D34D343A99BCE6F1387A
          6164AA8CE376D6C6C6AF66306B4DA4F4E27600141CC33794B0F54A537CF2C34A
          69C950A3271B1AD7A516E72E86AE2B45D6F4E274B1F9A5AA7635738DD19D7FB3
          D0A30D2E8CA306DE8D6B34DB926D3E8E85B001C6CFF14E12A62EC7453294F9CB
          56CAD96A3AC23B524D4537AEFEED3ACE2E759D4A118F357CDCA34426A5255423
          627369CF61C36A6F44F54B4496F2E600A66698B72B1C6CB9A9AC7D2A34690D39
          A5641C6CE1AEF7BF6B5D3A8F70CE2C78871AED968D62538CD424E12AD370FDD4
          23B51D34DC9B6E49702E000A1DB8E9DB83C446764A7B31AA4E51B2BB2BDF2D24
          B69422E3DAE125AAD1779D29E3A4BF6AB39FB255D51A957CDF352F6EAADF39AB
          5A3DF2D75E0B7B2D400A6519B58E2D4AF71A963146572957270AA556DC7F79B2
          A3A39E8B6B4D37F17C4D3563DC2A6A16CD39E2F14E334EB829B5BD6D49C5E8DE
          A9A8C56AF7EE2F20085926265661A9B26F594A984A4D69BDB8AD5E8BBC9A0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000001FFFD9}
        Stretch = True
        ExplicitWidth = 217
        ExplicitHeight = 232
      end
    end
  end
  object pnlGrid: TPanel
    Left = 0
    Top = 185
    Width = 640
    Height = 284
    Align = alClient
    TabOrder = 7
    object EditCodigos: TEdit
      Left = 215
      Top = 264
      Width = 121
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 0
      OnChange = EditCodigosChange
    end
    object EditDigitos: TEdit
      Left = 290
      Top = 264
      Width = 50
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBGrid: TDBGrid
      AlignWithMargins = True
      Left = 11
      Top = 4
      Width = 625
      Height = 276
      Margins.Left = 10
      Align = alClient
      DataSource = DmDados.DsCarrinhos
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PROD_CODIGO_BARRA'
          Title.Caption = 'C'#211'DIGO DE BARRAS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_PRODUTOS'
          Title.Caption = 'PRODUTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROD_VALOR_VENDA'
          Title.Caption = 'VALOR UNIT'#193'RIO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAR_QTDE'
          Title.Caption = 'QTDE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAR_SUBTOTAL'
          Title.Caption = 'SUB-TOTAL'
          Visible = True
        end>
    end
  end
end
