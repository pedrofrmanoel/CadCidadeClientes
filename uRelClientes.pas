unit uRelClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ActnList, Vcl.ImgList, frxClass, frxDBSet, Data.DB, Data.Win.ADODB,
  frxExportPDF, strUtils;

type
  TRelClientes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cbOrdem: TComboBox;
    cbAgrupar: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    ImageList1: TImageList;
    ActionList1: TActionList;
    actImprimir: TAction;
    actExportar: TAction;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    frxDBDataset: TfrxDBDataset;
    adoAux: TADOQuery;
    adoAuxcodigo_cliente: TAutoIncField;
    adoAuxcgc_cpf_cliente: TWideStringField;
    adoAuxnome: TWideStringField;
    adoAuxendereco: TWideStringField;
    adoAuxcomplemento: TWideStringField;
    adoAuxbairro: TWideStringField;
    adoAuxcodigo_cidade: TIntegerField;
    adoAuxcidade: TWideStringField;
    adoAuxestado: TWideStringField;
    adoAuxe_mail: TWideStringField;
    adoAuxtelefone: TWideStringField;
    adoAuxcep: TWideStringField;
    Label12: TLabel;
    edtCidade: TEdit;
    spPesquisaCidade: TSpeedButton;
    edtnCidade: TEdit;
    Label13: TLabel;
    Label3: TLabel;
    edtCliente: TEdit;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    edtNCliente: TEdit;
    Label5: TLabel;
    edtcepInicial: TEdit;
    Label6: TLabel;
    edtcepfinal: TEdit;
    procedure actImprimirExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
    procedure edtCidadeExit(Sender: TObject);
    procedure spPesquisaCidadeClick(Sender: TObject);
    procedure edtClienteExit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edtcepInicialExit(Sender: TObject);
    procedure edtcepfinalExit(Sender: TObject);
  private
    procedure Define(Tipo: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelClientes: TRelClientes;

implementation

{$R *.dfm}

uses uDM, uPesquisaCidades, uFuncoes, uPesquisaClientes;

procedure TRelClientes.actExportarExecute(Sender: TObject);
begin
  define(1);
end;

procedure TRelClientes.actImprimirExecute(Sender: TObject);
begin
  define(0);
end;

procedure TRelClientes.Define(Tipo:Integer);
var sOrdem, sDetalhe, sFiltro :String;
begin

  if (trim(edtcepInicial.text) <> '') and (trim(edtcepfinal.text) = '') then begin
    ShowMessage('Informe o cep final!');
    exit;
  end else
  if (trim(edtcepInicial.text) = '') and (trim(edtcepfinal.text) <> '') then begin
    ShowMessage('Informe o cep inicial!');
    exit;
  end;

  if      cbOrdem.ItemIndex = 0 then sOrdem := 'a.codigo_cliente'
  else if cbOrdem.ItemIndex = 1 then sOrdem := 'a.nome';

  if      cbAgrupar.ItemIndex = 1 then sOrdem := ' b.estado, '+sOrdem
  else if cbAgrupar.ItemIndex = 2 then sOrdem := ' b.nome, '+sOrdem;

  if trim(edtCidade.Text) <> '' then sFiltro := sFiltro+' a.codigo_cidade = '+edtCidade.Text;
  if trim(edtCliente.Text)<> '' then sFiltro := sFiltro+ifthen(sFiltro = '','',' and ')+' a.codigo_cliente = '+edtCliente.Text;

  if trim(edtcepInicial.Text)<> '' then begin
    sFiltro := sFiltro+ifthen(sFiltro = '','',' and ')+' (a.cep between '+QuotedStr(edtcepInicial.Text)+' and '+QuotedStr(edtcepfinal.Text)+')';
  end;

  adoAux.Close;
  adoAux.SQL.Clear;
  adoAux.SQL.Add('select a.*, b.nome as cidade, b.estado '+
                 'from clientes a '+
                 'left join cidades b on b.codigo_cidade = a.codigo_cidade '+
                 ifthen(sFiltro= '','',' where '+sFiltro)+
                 'order by '+sOrdem);
  adoAux.Open;

  if adoAux.IsEmpty then begin
    ShowMessage('Nenhum registro encontrado!');
    exit;
  end;

  sDetalhe := 'Ordem ';
  if      cbOrdem.ItemIndex = 0 then sDetalhe := sDetalhe+ ' código cliente'
  else if cbOrdem.ItemIndex = 1 then sDetalhe := sDetalhe+ ' nome';

  if      cbAgrupar.ItemIndex = 1 then sDetalhe := sDetalhe+', Agrupado por Estado'
  else if cbAgrupar.ItemIndex = 2 then sDetalhe := sDetalhe+', Agrupado por Cidade';

  if trim(edtCidade.Text)  <> '' then sDetalhe := sDetalhe+', Filtro Cidade: '+edtnCidade.Text;
  if trim(edtCliente.Text) <> '' then sDetalhe := sDetalhe+', Filtro Cliente: '+edtNCliente.Text;
  if trim(edtcepInicial.Text)<> '' then sDetalhe := sDetalhe+', Filtro CEP '+edtcepInicial.Text+' '+edtcepfinal.Text;

  frxReport1.Variables['Grupo']   := cbagrupar.itemindex;
  frxReport1.Variables['Detalhe'] := QuotedStr(sDetalhe);
  frxReport1.PrepareReport;

  if tipo = 0 then
    frxReport1.ShowReport()
  else begin

  end;

end;

procedure TRelClientes.edtClienteExit(Sender: TObject);
begin

  edtCliente.Text := SomenteNumeros(TRIM(edtCliente.Text));

  if edtCliente.Text = '' then begin
    exit;
  end;

  try
    dm.adoAuxiliar.close;
    dm.adoAuxiliar.SQL.Clear;
    dm.adoAuxiliar.SQL.Add('select * from clientes WHERE codigo_cliente = '+edtCliente.Text);
    dm.adoAuxiliar.Open;

    if dm.adoAuxiliar.IsEmpty then begin
      edtCliente.Text  := '';
      edtNCliente.Text := '';
      ShowMessage('Cliente não encontrado!');
    end else begin
      edtCliente.Text  := dm.adoAuxiliar.FieldByName('codigo_cliente').AsString;
      edtNCliente.Text := dm.adoAuxiliar.FieldByName('NOME').AsString;
    end;

  finally
    dm.adoAuxiliar.Close;
  end;
end;

procedure TRelClientes.SpeedButton3Click(Sender: TObject);
begin
  try
    Application.CreateForm( TfrmPesquisaClientes, frmPesquisaClientes);
    frmPesquisaClientes.ShowModal;

    if dm.adoClientescodigo_cliente.AsString <> '' then begin
      edtCliente.Text := dm.adoClientescodigo_cliente.AsString;
      edtClienteExit(self);
    end;

    dm.adoClientes.Close;

  finally
    FreeAndNil(frmPesquisaClientes);
  end;
end;

procedure TRelClientes.edtcepfinalExit(Sender: TObject);
begin
  edtcepfinal.text := FormataCEP(edtcepfinal.text);
end;

procedure TRelClientes.edtcepInicialExit(Sender: TObject);
begin
  edtcepInicial.text := FormataCEP(edtcepInicial.text);
end;

procedure TRelClientes.edtCidadeExit(Sender: TObject);
begin

  edtCidade.Text := SomenteNumeros(TRIM(edtCidade.Text));

  if edtCidade.Text = '' then begin
    exit;
  end;

  try
    dm.adoAuxiliar.close;
    dm.adoAuxiliar.SQL.Clear;
    dm.adoAuxiliar.SQL.Add('select * from cidades WHERE codigo_cidade = '+edtCidade.Text);
    dm.adoAuxiliar.Open;

    if dm.adoAuxiliar.IsEmpty then begin
      edtCidade.Text  := '';
      edtnCidade.Text := '';
      ShowMessage('Cidade não encontrada!');
    end else begin
      edtCidade.Text  := dm.adoAuxiliar.FieldByName('codigo_cidade').AsString;
      edtnCidade.Text := dm.adoAuxiliar.FieldByName('NOME').AsString+' / '+dm.adoAuxiliar.FieldByName('ESTADO').AsString;
    end;

  finally
    dm.adoAuxiliar.Close;
  end;
end;

procedure TRelClientes.spPesquisaCidadeClick(Sender: TObject);
begin
  try
    Application.CreateForm( TfrmPesquisaCidades, frmPesquisaCidades);
    frmPesquisaCidades.ShowModal;

    if dm.adoCidadescodigo_cidade.AsString <> '' then begin
      edtCidade.Text := dm.adoCidadescodigo_cidade.AsString;
      edtCidadeExit(self);
    end;

    dm.adoCidades.Close;

  finally
    FreeAndNil(frmPesquisaCidades);
  end;
end;

end.
