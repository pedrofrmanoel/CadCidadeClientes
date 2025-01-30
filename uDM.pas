unit uDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.DB, Data.SqlExpr,
  Data.Win.ADODB;

type
  Tdm = class(TDataModule)
    conexao: TADOConnection;
    adoCidades: TADOQuery;
    adoCidadescodigo_cidade: TIntegerField;
    adoCidadesnome: TWideStringField;
    adoCidadesestado: TWideStringField;
    adoCidadescep_inicial: TStringField;
    adoCidadescep_final: TStringField;
    spCidade: TADOStoredProc;
    spCidadeExcluir: TADOStoredProc;
    adoClientes: TADOQuery;
    spCliente: TADOStoredProc;
    spClienteExcluir: TADOStoredProc;
    adoClientescodigo_cliente: TAutoIncField;
    adoClientescgc_cpf_cliente: TWideStringField;
    adoClientesnome: TWideStringField;
    adoClientestelefone: TWideStringField;
    adoClientesendereco: TWideStringField;
    adoClientesbairro: TWideStringField;
    adoClientescomplemento: TWideStringField;
    adoClientese_mail: TWideStringField;
    adoClientescodigo_cidade: TIntegerField;
    adoClientescidade: TWideStringField;
    adoClientesestado: TWideStringField;
    adoClientescep: TWideStringField;
    spClienteEditar: TADOStoredProc;
    spCidadeEditar: TADOStoredProc;
    adoAuxiliar: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

end.
