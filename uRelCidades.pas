unit uRelCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  Vcl.ActnList, Vcl.ImgList, frxClass, frxDBSet, Data.DB, Data.Win.ADODB,
  frxExportPDF, strUtils;

type
  TRelCidades = class(TForm)
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
    adoAux: TADOQuery;
    adoAuxcodigo_cidade: TIntegerField;
    adoAuxnome: TWideStringField;
    adoAuxestado: TWideStringField;
    adoAuxcep_inicial: TStringField;
    adoAuxcep_final: TStringField;
    frxDBDataset: TfrxDBDataset;
    procedure actImprimirExecute(Sender: TObject);
    procedure actExportarExecute(Sender: TObject);
  private
    procedure Define(Tipo: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RelCidades: TRelCidades;

implementation

{$R *.dfm}

uses uDM;

procedure TRelCidades.actExportarExecute(Sender: TObject);
begin
  define(1);
end;

procedure TRelCidades.actImprimirExecute(Sender: TObject);
begin
  define(0);
end;

procedure TRelCidades.Define(Tipo:Integer);
var sOrdem :String;
begin

  if      cbOrdem.ItemIndex = 0 then sOrdem := 'codigo_cidade'
  else if cbOrdem.ItemIndex = 1 then sOrdem := 'nome';

  adoAux.Close;
  adoAux.SQL.Clear;
  adoAux.SQL.Add('select * from cidades order by '+sOrdem);
  adoAux.Open;

  if adoAux.IsEmpty then begin
    ShowMessage('Nenhum registro encontrado!');
    exit;
  end;

  frxReport1.Variables['Grupo']   :=  cbagrupar.itemindex;
  frxReport1.Variables['Detalhe'] := QuotedStr('Ordem '+cbOrdem.Text+
                                       ifthen(cbagrupar.itemindex = 0,'',
                                                ', Agrupado por '+cbAgrupar.Text));
  frxReport1.PrepareReport;

  if tipo = 0 then
    frxReport1.ShowReport()
  else begin

  end;

end;

end.
