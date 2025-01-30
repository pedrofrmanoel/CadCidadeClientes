unit uPesquisaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, StrUtils;

type
  TfrmPesquisaClientes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    cbCamposFIltro: TComboBox;
    cbTipoFiltro: TComboBox;
    Label3: TLabel;
    Label2: TLabel;
    edtPesquisa: TEdit;
    btnPesquisar: TButton;
    dts: TDataSource;
    grade: TDBGrid;
    procedure btnPesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gradeDblClick(Sender: TObject);
  private
    { Private declarations }
    sComandoInicial :String;
    procedure CarregaDados;
  public
    { Public declarations }
  end;

var
  frmPesquisaClientes: TfrmPesquisaClientes;

implementation

{$R *.dfm}

uses uDM, uFuncoes;

procedure TfrmPesquisaClientes.btnPesquisarClick(Sender: TObject);
begin
 CarregaDados;
end;

procedure TfrmPesquisaClientes.CarregaDados;
begin
  try
    dm.adoClientes.Close;
    dm.adoClientes.SQL.Clear;
    if trim(edtPesquisa.Text) <> '' then
      dm.adoClientes.SQL.Add(sComandoInicial+
                            ' where '+dts.DataSet.Fields[cbCamposFIltro.ItemIndex].FieldName+
                                     ifthen(cbTipoFiltro.ItemIndex = 0,' = ', ' like ')+
                                     QuotedStr(ifthen(cbTipoFiltro.ItemIndex = 0, edtPesquisa.Text, '%'+edtPesquisa.Text+'%'))
                           )
    else
      dm.adoClientes.SQL.Add(sComandoInicial);

    dm.adoClientes.Open;
  except
    ShowMessage('Verifique o texto pesquisado!');
    exit;
  end;

end;

procedure TfrmPesquisaClientes.FormShow(Sender: TObject);
begin
  dts.DataSet     := dm.adoClientes;
  sComandoInicial := dm.adoClientes.SQL.Text;

  //Carrega o combo dos campos
  CarregaCamposCombo(dts, cbCamposFIltro);

  //abre os dados da tabela
  CarregaDados;
end;

procedure TfrmPesquisaClientes.gradeDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
  Close;
end;

end.
