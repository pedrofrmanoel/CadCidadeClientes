object frmPesquisaClientes: TfrmPesquisaClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Pesquisa Cliente(s)'
  ClientHeight = 398
  ClientWidth = 583
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 583
    Height = 65
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 73
      Height = 16
      Caption = 'Campo Filtro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 130
      Top = 16
      Width = 25
      Height = 16
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 224
      Top = 16
      Width = 29
      Height = 16
      Caption = 'Filtro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cbCamposFIltro: TComboBox
      Left = 5
      Top = 32
      Width = 116
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object cbTipoFiltro: TComboBox
      Left = 127
      Top = 32
      Width = 82
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 1
      Text = 'Igual'
      Items.Strings = (
        'Igual'
        'Contendo')
    end
    object edtPesquisa: TEdit
      Left = 224
      Top = 32
      Width = 217
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btnPesquisar: TButton
      Left = 442
      Top = 31
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnPesquisarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 583
    Height = 333
    Align = alClient
    TabOrder = 1
    object grade: TDBGrid
      Left = 1
      Top = 1
      Width = 581
      Height = 331
      Align = alClient
      DataSource = dts
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = gradeDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'codigo_cliente'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cgc_cpf_cliente'
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Width = 181
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'codigo_cidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cidade'
          Width = 127
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'estado'
          Visible = True
        end>
    end
  end
  object dts: TDataSource
    AutoEdit = False
    DataSet = dm.adoClientes
    Left = 408
    Top = 80
  end
end
