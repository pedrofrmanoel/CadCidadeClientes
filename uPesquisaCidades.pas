unit uPesquisaCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, StrUtils;

type
  TfrmPesquisaCidades = class(TForm)
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
  frmPesquisaCidades: TfrmPesquisaCidades;

implementation

{$R *.dfm}

uses uDM, uFuncoes;

procedure TfrmPesquisaCidades.btnPesquisarClick(Sender: TObject);
begin
 CarregaDados;
end;

procedure TfrmPesquisaCidades.CarregaDados;
begin
  try
    dm.adoCidades.Close;
    dm.adoCidades.SQL.Clear;
    if trim(edtPesquisa.Text) <> '' then
      dm.adoCidades.SQL.Add(sComandoInicial+
                            ' where '+dts.DataSet.Fields[cbCamposFIltro.ItemIndex].FieldName+
                                     ifthen(cbTipoFiltro.ItemIndex = 0,' = ', ' like ')+
                                     QuotedStr(ifthen(cbTipoFiltro.ItemIndex = 0, edtPesquisa.Text, '%'+edtPesquisa.Text+'%'))
                           )
    else
      dm.adoCidades.SQL.Add(sComandoInicial);

    dm.adoCidades.Open;
  except
    ShowMessage('Verifique o texto pesquisado!');
    exit;
  end;

end;

procedure TfrmPesquisaCidades.FormShow(Sender: TObject);
begin
  dts.DataSet     := dm.adoCidades;
  sComandoInicial := dm.adoCidades.SQL.Text;

  //Carrega o combo dos campos
  CarregaCamposCombo(dts, cbCamposFIltro);

  //abre os dados da tabela
  CarregaDados;
end;

procedure TfrmPesquisaCidades.gradeDblClick(Sender: TObject);
begin
  ModalResult := mrOk;
  Close;
end;

end.
