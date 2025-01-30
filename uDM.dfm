object dm: Tdm
  OldCreateOrder = False
  Height = 369
  Width = 422
  object conexao: TADOConnection
    ConnectionString = 
      'Provider=SQLNCLI11.1;Persist Security Info=False;User ID=sa;Init' +
      'ial Catalog=BANCO;Data Source=ASUS-NB\SQL2019;Initial File Name=' +
      '"";Server SPN="";'
    Provider = 'SQLNCLI11.1'
    Left = 32
    Top = 16
  end
  object adoCidades: TADOQuery
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cidades')
    Left = 32
    Top = 72
    object adoCidadescodigo_cidade: TIntegerField
      DisplayLabel = 'C'#243'digo Cidade'
      FieldName = 'codigo_cidade'
    end
    object adoCidadesnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 100
    end
    object adoCidadesestado: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Size = 2
    end
    object adoCidadescep_inicial: TStringField
      DisplayLabel = 'Cep Inicial'
      FieldName = 'cep_inicial'
      FixedChar = True
      Size = 9
    end
    object adoCidadescep_final: TStringField
      DisplayLabel = 'Cep Final'
      FieldName = 'cep_final'
      FixedChar = True
      Size = 9
    end
  end
  object spCidade: TADOStoredProc
    AutoCalcFields = False
    Connection = conexao
    ProcedureName = 'inserircidade;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@codigocidade'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@nome'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@estado'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@cepinicial'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@cepfinal'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end>
    Left = 32
    Top = 120
  end
  object spCidadeExcluir: TADOStoredProc
    AutoCalcFields = False
    Connection = conexao
    ProcedureName = 'excluircidade;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@codigocidade'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 32
    Top = 232
  end
  object adoClientes: TADOQuery
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select a.*, b.nome as cidade, b.estado '
      'from clientes a'
      'left join cidades b on b.codigo_cidade = a.codigo_cidade')
    Left = 136
    Top = 72
    object adoClientescodigo_cliente: TAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo_cliente'
      ReadOnly = True
    end
    object adoClientescgc_cpf_cliente: TWideStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'cgc_cpf_cliente'
    end
    object adoClientesnome: TWideStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 150
    end
    object adoClientesendereco: TWideStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'endereco'
      Size = 200
    end
    object adoClientescomplemento: TWideStringField
      DisplayLabel = 'Complemento'
      FieldName = 'complemento'
      Size = 100
    end
    object adoClientesbairro: TWideStringField
      DisplayLabel = 'Bairro'
      FieldName = 'bairro'
      Size = 100
    end
    object adoClientescodigo_cidade: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'codigo_cidade'
    end
    object adoClientescidade: TWideStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 100
    end
    object adoClientesestado: TWideStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Size = 2
    end
    object adoClientese_mail: TWideStringField
      DisplayLabel = 'Email'
      FieldName = 'e_mail'
      Size = 150
    end
    object adoClientestelefone: TWideStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Size = 15
    end
    object adoClientescep: TWideStringField
      DisplayLabel = 'CEP'
      FieldName = 'cep'
      Size = 9
    end
  end
  object spCliente: TADOStoredProc
    AutoCalcFields = False
    Connection = conexao
    ProcedureName = 'inserircliente;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@cgc_cpf_cliente'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@nome'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@telefone'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@cep'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 9
        Value = Null
      end
      item
        Name = '@endereco'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 150
        Value = Null
      end
      item
        Name = '@bairro'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@complemento'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@e_mail'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@codigo_cidade'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 136
    Top = 120
  end
  object spClienteExcluir: TADOStoredProc
    AutoCalcFields = False
    Connection = conexao
    ProcedureName = 'excluircliente;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@codigo_cliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 136
    Top = 232
  end
  object spClienteEditar: TADOStoredProc
    AutoCalcFields = False
    Connection = conexao
    ProcedureName = 'editarcliente;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@codigo_cliente'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@cgc_cpf_cliente'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@nome'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@telefone'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 20
        Value = Null
      end
      item
        Name = '@cep'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 9
        Value = Null
      end
      item
        Name = '@endereco'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 150
        Value = Null
      end
      item
        Name = '@bairro'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@complemento'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@e_mail'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@codigo_cidade'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 136
    Top = 176
  end
  object spCidadeEditar: TADOStoredProc
    AutoCalcFields = False
    Connection = conexao
    ProcedureName = 'editarcidade;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@codigocidade'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@nome'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = Null
      end
      item
        Name = '@estado'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2
        Value = Null
      end
      item
        Name = '@cepinicial'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end
      item
        Name = '@cepfinal'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = Null
      end>
    Left = 32
    Top = 176
  end
  object adoAuxiliar: TADOQuery
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from cidades')
    Left = 224
    Top = 72
  end
end
