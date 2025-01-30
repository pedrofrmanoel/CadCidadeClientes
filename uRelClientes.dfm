object RelClientes: TRelClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio de Clientes'
  ClientHeight = 296
  ClientWidth = 340
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 237
    Width = 340
    Height = 59
    Align = alBottom
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 120
      Top = 6
      Width = 81
      Height = 51
      Action = actImprimir
    end
    object SpeedButton2: TSpeedButton
      Left = 224
      Top = 6
      Width = 81
      Height = 51
      Action = actExportar
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 340
    Height = 237
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 21
      Width = 39
      Height = 16
      Caption = 'Ordem'
    end
    object Label2: TLabel
      Left = 176
      Top = 21
      Width = 46
      Height = 16
      Caption = 'Agrupar'
    end
    object Label12: TLabel
      Left = 9
      Top = 75
      Width = 82
      Height = 16
      Caption = 'C'#243'digo Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object spPesquisaCidade: TSpeedButton
      Left = 121
      Top = 94
      Width = 25
      Height = 24
      Glyph.Data = {
        16050000424D160500000000000036040000280000000D0000000E0000000100
        080000000000E000000000000000000000000001000000010000175E9600E7EE
        F400F6D6B800D3A57F009F969400E8CEB9006396C40088B4DD004F86BA00FAFC
        FD00F5E0CD00F0CEAE00DFB89800DEE8F100D0A07B003070A4007AA3C900F8DB
        C000F7E7D600F9ECDF00E8C9AD00AACBE8006494BA00F0D5BC0085ADD500C7A7
        9000F5DDC50075A3CE00F7E5D100F9EADD009CC0E4003F7AAE00ADA09800F7D6
        BD00D2A68400FFFFFF00DFB99B00FCEAD70021669C00F1DBC7006E9BC100FAEE
        E300EDCFB600FFE6CE00D7AA8600548CBB00DEE6F70081A8C500DFBA9C000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000232323232323
        232323232301230000002323232323232323230916262F000000232323232323
        232309282D0700000000232323232323230910061E060F0000002323050C030E
        22201B151B1F0D0000002314140A1C1C27241918080D23000000272A121A1717
        111C30040123230000000B120A111111021127222323230000000B131A1A1A1A
        1A171C0323232300000002130A0A0A1A1A1A122C2323230000001113120A0A0A
        1A1A0A0C232323000000250A29120A0A0A1D2A2A232323000000232B2B131313
        13172A23232323000000232325110202020A2323232323000000}
      OnClick = spPesquisaCidadeClick
    end
    object Label13: TLabel
      Left = 153
      Top = 75
      Width = 67
      Height = 16
      Caption = 'Cidade / UF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 9
      Top = 131
      Width = 82
      Height = 16
      Caption = 'C'#243'digo Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 121
      Top = 150
      Width = 25
      Height = 24
      Glyph.Data = {
        16050000424D160500000000000036040000280000000D0000000E0000000100
        080000000000E000000000000000000000000001000000010000175E9600E7EE
        F400F6D6B800D3A57F009F969400E8CEB9006396C40088B4DD004F86BA00FAFC
        FD00F5E0CD00F0CEAE00DFB89800DEE8F100D0A07B003070A4007AA3C900F8DB
        C000F7E7D600F9ECDF00E8C9AD00AACBE8006494BA00F0D5BC0085ADD500C7A7
        9000F5DDC50075A3CE00F7E5D100F9EADD009CC0E4003F7AAE00ADA09800F7D6
        BD00D2A68400FFFFFF00DFB99B00FCEAD70021669C00F1DBC7006E9BC100FAEE
        E300EDCFB600FFE6CE00D7AA8600548CBB00DEE6F70081A8C500DFBA9C000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000232323232323
        232323232301230000002323232323232323230916262F000000232323232323
        232309282D0700000000232323232323230910061E060F0000002323050C030E
        22201B151B1F0D0000002314140A1C1C27241918080D23000000272A121A1717
        111C30040123230000000B120A111111021127222323230000000B131A1A1A1A
        1A171C0323232300000002130A0A0A1A1A1A122C2323230000001113120A0A0A
        1A1A0A0C232323000000250A29120A0A0A1D2A2A232323000000232B2B131313
        13172A23232323000000232325110202020A2323232323000000}
      OnClick = SpeedButton3Click
    end
    object Label4: TLabel
      Left = 153
      Top = 131
      Width = 33
      Height = 16
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 9
      Top = 179
      Width = 59
      Height = 16
      Caption = 'CEP Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 153
      Top = 179
      Width = 53
      Height = 16
      Caption = 'CEP Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cbOrdem: TComboBox
      Left = 8
      Top = 40
      Width = 145
      Height = 24
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'C'#243'digo'
      Items.Strings = (
        'C'#243'digo'
        'Nome')
    end
    object cbAgrupar: TComboBox
      Left = 176
      Top = 40
      Width = 145
      Height = 24
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Items.Strings = (
        ''
        'Estado'
        'Cidade')
    end
    object edtCidade: TEdit
      Left = 9
      Top = 94
      Width = 108
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 2
      OnExit = edtCidadeExit
    end
    object edtnCidade: TEdit
      Left = 152
      Top = 94
      Width = 178
      Height = 24
      TabStop = False
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object edtCliente: TEdit
      Left = 9
      Top = 150
      Width = 108
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 4
      OnExit = edtClienteExit
    end
    object edtNCliente: TEdit
      Left = 152
      Top = 150
      Width = 178
      Height = 24
      TabStop = False
      Color = cl3DLight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object edtcepInicial: TEdit
      Left = 9
      Top = 198
      Width = 108
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 6
      OnExit = edtcepInicialExit
    end
    object edtcepfinal: TEdit
      Left = 153
      Top = 198
      Width = 108
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 7
      OnExit = edtcepfinalExit
    end
  end
  object ImageList1: TImageList
    Left = 352
    Top = 24
    Bitmap = {
      494C010102000800280010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      00000000000000000000000000000000000097DFBE0079D5AB0081D8B00081D8
      B00081D8B00081D8B00081D8B00081D8B00081D8B00081D8B00081D8B00081D8
      B00081D8B00081D8B0007BD6AD0089DAB50000000000FFFFFF00FFFFFF00F9F7
      F700FFFDFD009E9C9C00CFCDCD0000000000FFFFFF00CBC9C90066646400F9F9
      F900FAFAFA00FDFDFD00F5F5F500F9F9F9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000005ACB9700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005FCD9B00FFFFFF00FFFDFD00FFFFFF007876
      760077757500C7C5C500A9A7A7005B59590063616100BAB8B800E8E6E600C0C0
      C0007B7B7B00BFBFBF00EFEFEF00F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000061CE9C00FFFFFF00FFFFFF00FEFE
      FE00FEFEFE00FFFFFF00E4C9BB00E2C7B800E1C4B400DFC2B000DEC0AB00DEBE
      A500FFFFFF00FFFFFF00FFFFFF0061CE9C00FEFCFC00747272008B898900FFFF
      FF00EAE8E800D3D1D100B0AEAE00AEACAC005F5D5D00605E5E005F5D5D009292
      920095959500FBFBFB00DBDBDB00757575000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000061CE9C00FFFFFF00FFFFFF00FEFE
      FE00FEFEFE00D19F8800FFFFFF00F2E5DF00F1E4DD00F1E3DB00F1E3DA00EFE0
      D500BD7D4D00FFFFFF00FFFFFF0061CE9C0072707000FFFFFF00EFEDED00F8F6
      F600E2E0E0008F8D8D00817F7F00ADABAB00B5B3B300C1BFBF00C0BEBE009393
      930099999900595959008F8F8F00ECECEC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000061CE9C00FFFFFF00FFFFFF00CB95
      7C00BB755200CB937800FEFEFD00EEDCD400EDDAD100EBD8CF00EAD7CC00E9D4
      C800C3866000FFFFFF00FFFFFF0061CE9C0075737300FCFAFA00F0EEEE00CAC8
      C800949292009D9B9B008A8888008280800096949400AEACAC00BEBCBC00B2B2
      B200B6B6B6007A7A7A00B2B2B200FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000061CE9C00FFFFFF00FFFFFF00C485
      6800C8907500D19F8800FEFDFC00E3C5B700E1C1B300DFBEAE00DDBBAA00DAB4
      A100C58C6C00FFFFFF00FFFFFF0061CE9C00737171009F9D9D0096949400EEEC
      EC00D4D2D200CFCDCD00D7D5D500C9C7C700B7B5B500949292009E9C9C008888
      8800888888008484840087878700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000061CE9C00FFFFFF00FFFFFF00C98D
      7300EEDED600DAB19F00FDFAFA00DAB2A000D8AE9A00D5A89400D3A48E00CD99
      8100C9927600FFFFFF00FFFFFF0061CE9C008B898800E8E6E500D4D2D200DBDA
      DC00CCCBCD00D1D0D200C9C8CA00CBCACC00C8C8C800E1E1E100E7E7E700CACA
      CA00CCCCCC00BCBCBC00A6A6A600F8F8F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000061CE9C00FFFFFF00FFFFFF00CE97
      7E00E4C7BA00DDB4A200FFFFFF00FBF7F600FBF7F600F9F3F100F8F2F000F8F1
      EE00CD998000FFFFFF00FFFFFF0061CE9C0080807A00E0E1DD00DBDCDA00E3E6
      EA00D9DCE100E6E9F100FAFDFF00F0F3F700EFF3F400E9EEEC00E5E8E600CFCF
      CF00C9C9C900D2D2D200CCCCCC00F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000061CE9C00FFFFFF00FFFFFF00D29F
      8800DAAF9B00DEB7A500F7EFE800AE611D00AA581000ECD7CD00EAD2C800E8CD
      C100D19F8800FFFFFF00FFFFFF0061CE9C00C6C7C300AEACAB00B7B5B400ABA9
      A900918F8F00A8A5A700C5C2C400DEDEDE00EFF0EE00F5F6F200F5F6F400F7F7
      F700E5E5E500B7B7B700BCBCBC00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000061CE9C00FFFFFF00FFFFFF00D7A7
      9200FBF6F500E7C9BA00F7EFE800AE611D00AA581000E2C0B000DFBAAA00DAB1
      9E00D4A69100FFFFFF00FFFFFF0061CE9C00FBFEFF00FEFCFC00C5C0BD00FFFF
      F800FFF7EE00CBB8AB00D2C1B400D3C7BB00D3C8C000B0ADA500B1AEA900B0B0
      B000C6C6C600F7F7F700FFFFFF00F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000061CE9C00FFFFFF00FFFFFF00DBB1
      9C00AB5B1500DDB79F00FEFEFE00E4CBB400E3C8B000FBF5F200FAF3F000F9F2
      EE00D8AD9900FFFFFF00FFFFFF0061CE9C00EEF3FC00FFFFFF00F9F0EC00D4BD
      AD00EFD4BF00E2C1A700DFC1A600E8D0BC00EAD8C700C4BBB100CDC7C000F2F2
      F200FAFAFA00FFFFFF00FFFFFF00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000061CE9C00FFFFFF00FFFFFF00E0B8
      A600AB5B1500AF621F00ECD4C800EACEC100E8CABB00E2C1B000E1BEAE00DFBA
      AA00FDFBFA00FFFFFF00FFFFFF0061CE9C00F8FBFF00FFFEFF00FFF4F000E4CB
      B700FFECD300FFEACC00FFDBBD00F1D5BD00F7E1CF00AB9F9500FFFFF800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000061CE9C00FFFFFF00FFFFFF00E5C3
      B200F8EEEA00F6EBE800F2E2DB00F2E2DB00F0E0D800E6C9BC00FCF9F700FEFE
      FE00FEFEFE00FFFFFF00FFFFFF0061CE9C00FBFEFF00FFFBFC00FAF0E900FBE3
      D100FBDCC500FDDBBE00FFEED100FFE6D100F2DECC009F938900FFFFF900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000061CE9C00FFFFFF00FFFFFF00FFFF
      FF00FDFCFB00FDFCFB00FDFCFB00FDFBFB00FDFBFB00FDFCFC00FEFEFE00FEFE
      FE00FEFEFE00FFFFFF00FFFFFF0061CE9C00F6F6F600FFFFFC00C6BEB700F7E7
      DA00FFF2E300FFEBDB00FFE8D800F3E3D300FFFAEC00D5CFC400FBF8F000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004EC89000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0056CA9500FFFFF800A9A69E00D9D6CE00F9F3
      EE00FFFEF900FFFFFC00FEF7F400FFFFFB00CAC7BF00FEFCF200FFFFF900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3F7EE004BC78F004FC991004FC9
      91004FC991004FC991004FC991004FC991004FC991004FC991004FC991004FC9
      91004FC991004FC991004CC88F00DBF4E900FDF8E900F0ECE100E3E1D900CDCD
      CD00C4C3C500C5C5CB00C2C3C700A7A9A900ECEBE700FFFFF900FEFFF600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF0000008100000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object ActionList1: TActionList
    Images = ImageList1
    Left = 352
    Top = 88
    object actImprimir: TAction
      Caption = 'Imprimir'
      ImageIndex = 1
      OnExecute = actImprimirExecute
    end
    object actExportar: TAction
      Caption = 'Exportar'
      ImageIndex = 0
      OnExecute = actExportarExecute
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 264
    Top = 8
  end
  object frxReport1: TfrxReport
    Version = '4.12'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Padr'#227'o'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45686.868100717600000000
    ReportOptions.LastChange = 45686.868100717600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var '
      '  iCont, iContG :Integer;'
      '        '
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      '  memDetalhe.text := <Detalhe>;'
      '  memRodape.text  := '#39'P'#225'gina [PAGE#] de [TOTALPAGES#]  '#39';    '
      ''
      '  if <Grupo> = 0 then begin'
      '    GroupHeader1.visible := false;'
      '    GroupFooter1.visible := false;        '
      '  end else begin'
      '    GroupHeader1.visible := true;'
      '    GroupFooter1.visible := true;'
      ''
      
        '    if      <Grupo> = 1 then GroupHeader1.Condition := '#39'frxDBDat' +
        'aset1."estado"'#39
      
        '    else if <Grupo> = 1 then GroupHeader1.Condition := '#39'frxDBDat' +
        'aset1."cidade"'#39';          '
      '  end;            '
      ''
      'end;'
      '    '
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  iCont  := iCont + 1;'
      '  iContG := iContG + 1;      '
      'end;'
      ''
      'procedure GroupFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  memFGrupo.text := inttostr(iContG)+'#39' Registro(s)'#39';'
      '  iContG := 0;                    '
      'end;'
      '  '
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if      <Grupo> = 1 then memGrupo.text := '#39'Estado: '#39'+<frxDBDat' +
        'aset1."estado">'
      
        '  else if <Grupo> = 2 then memGrupo.text := '#39'Cidade: '#39'+<frxDBDat' +
        'aset1."cidade">;      '
      'end;'
      '  '
      'procedure ReportSummary1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  memTotal.text := inttostr(iCont)+'#39' Registro(s)'#39';'
      '  iCont := 0;  '
      'end;'
      ''
      'begin'
      '  '
      'end.')
    Left = 288
    Top = 112
    Datasets = <
      item
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Grupo'
        Value = Null
      end
      item
        Name = 'Detalhe'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        Height = 79.370130000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          Left = 7.559060000000000000
          Top = 3.779530000000001000
          Width = 1031.811690000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Listagem de Clientes')
          ParentFont = False
        end
        object memDetalhe: TfrxMemoView
          Left = 7.338590000000000000
          Top = 49.133889999999990000
          Width = 1031.811690000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          ParentFont = False
        end
      end
      object Header1: TfrxHeader
        Height = 18.897637800000000000
        Top = 158.740260000000000000
        Width = 1046.929810000000000000
        object Memo3: TfrxMemoView
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 83.149660000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 831.937540000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cidade / Estado')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 540.472189530000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Cep ')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 374.173470000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Telefone')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 623.622450000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Endere'#231'o')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897637800000000000
        Top = 241.889920000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo8: TfrxMemoView
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'codigo_cliente'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."codigo_cliente"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 83.149660000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nome'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."nome"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 374.173470000000000000
          Width = 166.299320000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'telefone'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."telefone"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 831.495999530000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."cidade"] - [frxDBDataset1."estado"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 540.472790000000000000
          Width = 83.149660000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'cep'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."cep"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          Left = 623.622450000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'endereco'
          DataSet = frxDBDataset
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."endereco"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        Height = 18.897637800000000000
        Top = 200.315090000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = 'frxDBDataset1."estado"'
        object memGrupo: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        Height = 18.897637800000000000
        Top = 283.464750000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'GroupFooter1OnBeforePrint'
        object memFGrupo: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 30.236240000000000000
        Top = 430.866420000000000000
        Width = 1046.929810000000000000
        object memRodape: TfrxMemoView
          Left = 7.559060000000000000
          Top = 8.779529999999965000
          Width = 192.756030000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8W = (
            'P'#225'gina')
        end
        object Line1: TfrxLineView
          Top = 3.779530000000022000
          Width = 1035.591220000000000000
          ShowHint = False
          Frame.Typ = [ftTop]
        end
        object Memo2: TfrxMemoView
          Left = 730.669760000000000000
          Top = 8.338590000000010000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Sistema de Teste Pedro Manoel')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        Height = 46.574830000000000000
        Top = 362.834880000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'ReportSummary1OnBeforePrint'
        object memTotal: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Color = 14211288
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo_cliente=codigo_cliente'
      'cgc_cpf_cliente=cgc_cpf_cliente'
      'nome=nome'
      'endereco=endereco'
      'complemento=complemento'
      'bairro=bairro'
      'codigo_cidade=codigo_cidade'
      'cidade=cidade'
      'estado=estado'
      'e_mail=e_mail'
      'telefone=telefone'
      'cep=cep')
    DataSet = adoAux
    BCDToCurrency = False
    Left = 296
    Top = 64
  end
  object adoAux: TADOQuery
    Connection = dm.conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select a.*, b.nome as cidade, b.estado '
      'from clientes a'
      'left join cidades b on b.codigo_cidade = a.codigo_cidade')
    Left = 288
    Top = 160
    object adoAuxcodigo_cliente: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo_cliente'
      ReadOnly = True
    end
    object adoAuxcgc_cpf_cliente: TWideStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'cgc_cpf_cliente'
    end
    object adoAuxnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 150
    end
    object adoAuxendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 200
    end
    object adoAuxcomplemento: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'complemento'
      Size = 100
    end
    object adoAuxbairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 100
    end
    object adoAuxcodigo_cidade: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'codigo_cidade'
    end
    object adoAuxcidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 100
    end
    object adoAuxestado: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Size = 2
    end
    object adoAuxe_mail: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'e_mail'
      Size = 150
    end
    object adoAuxtelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 15
    end
    object adoAuxcep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 9
    end
  end
end
