unit uCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ImgList,
  Vcl.ActnList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data.DB, StrUtils;

type
  TfrmCidades = class(TForm)
    pnlBotoes: TPanel;
    pnlDados: TPanel;
    pnlFiltro: TPanel;
    cbCamposFIltro: TComboBox;
    edtPesquisa: TEdit;
    btnPesquisar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    btnCancelar: TSpeedButton;
    btnAlterar: TSpeedButton;
    btnIncluir: TSpeedButton;
    ActionList1: TActionList;
    actIncluir: TAction;
    actAlterar: TAction;
    actExcluir: TAction;
    actProximo: TAction;
    actAnterior: TAction;
    btnGravar: TSpeedButton;
    btnExcluir: TSpeedButton;
    actPrimeiro: TAction;
    actUltimo: TAction;
    ImageList1: TImageList;
    actGravar: TAction;
    actCancelar: TAction;
    grade: TDBGrid;
    dts: TDataSource;
    cbTipoFiltro: TComboBox;
    Label3: TLabel;
    pnlNavegacao: TPanel;
    btnPrimeiro: TSpeedButton;
    btnUltimo: TSpeedButton;
    btnProximo: TSpeedButton;
    btnVolta: TSpeedButton;
    btnRelatorios: TButton;
    pnlCadastro: TPanel;
    edtCodigo: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtNome: TEdit;
    Label6: TLabel;
    edtEstado: TEdit;
    Label7: TLabel;
    edtCepInicial: TEdit;
    Label8: TLabel;
    edtCepFinal: TEdit;
    procedure dtsStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnPrimeiroClick(Sender: TObject);
    procedure btnVoltaClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnUltimoClick(Sender: TObject);
    procedure actIncluirExecute(Sender: TObject);
    procedure actAlterarExecute(Sender: TObject);
    procedure actExcluirExecute(Sender: TObject);
    procedure actGravarExecute(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure edtCepInicialExit(Sender: TObject);
    procedure edtCepFinalExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRelatoriosClick(Sender: TObject);
  private
    { Private declarations }
    sComandoInicial :String;
    procedure CarregaDados;
    procedure PosicaoRegistro(Tipo:String);
  public
    { Public declarations }
  end;

var
  frmCidades: TfrmCidades;

implementation

{$R *.dfm}

uses uDM, uFuncoes, uRelCidades;

procedure tfrmCidades.PosicaoRegistro(Tipo:String);
begin

  if      tipo = '1' then dts.dataset.First
  else if tipo = '2' then dts.dataset.Prior
  else if tipo = '3' then dts.dataset.Next
  else if tipo = '4' then dts.dataset.Last;

end;

procedure TfrmCidades.Button2Click(Sender: TObject);
begin
  CarregaDados;
end;

procedure TfrmCidades.CarregaDados;
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

procedure TfrmCidades.actAlterarExecute(Sender: TObject);
begin
  edtCodigo.Text     := dm.adoCidadescodigo_cidade.AsString;
  edtNome.Text       := dm.adoCidadesnome.AsString;
  edtEstado.Text     := dm.adoCidadesestado.AsString;
  edtCepInicial.Text := dm.adoCidadescep_inicial.AsString;
  edtCepFinal.Text   := dm.adoCidadescep_final.AsString;

  pnlCadastro.Visible := True;
  pnlDados.Visible    := false;

  dts.DataSet.Edit;
  edtCodigo.setfocus;
end;

procedure TfrmCidades.actCancelarExecute(Sender: TObject);
begin
  pnlCadastro.Visible := false;
  pnlDados.Visible    := true;

  dts.DataSet.Cancel;
  CarregaDados;
end;

procedure TfrmCidades.actExcluirExecute(Sender: TObject);
begin
  if ( Messagedlg('Deseja excluir o registro ?', mtconfirmation, [mbYes, mbNo], 0) = mrYes) Then begin
    try
      dm.spCidadeExcluir.close;
      dm.spCidadeExcluir.ProcedureName := 'excluircidade;1';
      dm.spCidadeExcluir.Parameters.ParamByName('@codigocidade').Value := dm.adoCidadescodigo_cidade.AsString;
      dm.spCidadeExcluir.ExecProc;

      actCancelarExecute(self);

      MessageDlg('Exclusão realizada com sucesso!',mtConfirmation,[mbOK],0);

    except
      ShowMessage('Erro para excluir !')
    end;

  end;
end;

procedure TfrmCidades.actGravarExecute(Sender: TObject);
var sErro :String;
begin
  try
    sErro := '';

    if trim(edtCodigo.Text)     = '' then sErro := ' código da cidade';
    if trim(edtNome.Text)       = '' then sErro := ifthen(sErro = '','',sErro+', ')+' nome';
    if trim(edtEstado.Text)     = '' then sErro := ifthen(sErro = '','',sErro+', ')+' estado';
    if trim(edtCepInicial.Text) = '' then sErro := ifthen(sErro = '','',sErro+', ')+' cep inicial';
    if trim(edtCepFinal.Text)   = '' then sErro := ifthen(sErro = '','',sErro+', ')+' cep final';

    if sErro <> '' then begin
      ShowMessage('Verifique os campos:'+sErro);
      exit;
    end;

    if dts.State = dsInsert then begin
      dm.spCidade.close;
      dm.spCidade.ProcedureName    := 'inserircidade;1';
      dm.spCidade.Parameters.ParamByName('@codigocidade').Value := trim(edtCodigo.Text);
      dm.spCidade.Parameters.ParamByName('@nome').Value         := trim(edtNome.Text);
      dm.spCidade.Parameters.ParamByName('@estado').Value       := trim(edtEstado.Text);
      dm.spCidade.Parameters.ParamByName('@cepinicial').Value   := trim(edtCepInicial.Text);
      dm.spCidade.Parameters.ParamByName('@cepfinal').Value     := trim(edtCepFinal.Text);
      dm.spCidade.ExecProc;
    end;

    if dts.State = dsEdit   then begin
      dm.spCidadeEditar.close;
      dm.spCidadeEditar.ProcedureName    := 'editarcidade;1';
      dm.spCidadeEditar.Parameters.ParamByName('@codigocidade').Value := trim(edtCodigo.Text);
      dm.spCidadeEditar.Parameters.ParamByName('@nome').Value         := trim(edtNome.Text);
      dm.spCidadeEditar.Parameters.ParamByName('@estado').Value       := trim(edtEstado.Text);
      dm.spCidadeEditar.Parameters.ParamByName('@cepinicial').Value   := trim(edtCepInicial.Text);
      dm.spCidadeEditar.Parameters.ParamByName('@cepfinal').Value     := trim(edtCepFinal.Text);
      dm.spCidadeEditar.ExecProc;
    end;

    actCancelarExecute(self);
    MessageDlg('Operação realizada com sucesso!',mtConfirmation,[mbOK],0);

  except
    ShowMessage('Erro para gravar !');
  end;
end;

procedure TfrmCidades.actIncluirExecute(Sender: TObject);
begin

  edtCodigo.Text     := '';
  edtNome.Text       := '';
  edtEstado.Text     := '';
  edtCepInicial.Text := '';
  edtCepFinal.Text   := '';

  pnlCadastro.Visible := True;
  pnlDados.Visible    := false;

  dts.DataSet.Insert;
  edtCodigo.setfocus;

end;

procedure TfrmCidades.btnPesquisarClick(Sender: TObject);
begin
  CarregaDados;
end;

procedure TfrmCidades.dtsStateChange(Sender: TObject);
begin
  actIncluir.Enabled  := dts.State in [dsBrowse, dsInactive];
  btnIncluir.visible  := dts.State in [dsBrowse, dsInactive];

  actAlterar.Enabled  := (dts.State in [dsBrowse]) and not(dts.DataSet.IsEmpty) and (dts.DataSet.RecordCount > 0);
  btnAlterar.visible  := (dts.State in [dsBrowse]) and not(dts.DataSet.IsEmpty) and (dts.DataSet.RecordCount > 0);

  actExcluir.Enabled  := (dts.State in [dsBrowse]) and not(dts.DataSet.IsEmpty) and (dts.DataSet.RecordCount > 0);
  btnExcluir.visible  := (dts.State in [dsBrowse]) and not(dts.DataSet.IsEmpty) and (dts.DataSet.RecordCount > 0);

  actGravar.Enabled   := dts.State in [dsInsert, dsEdit];
  btnGravar.visible   := dts.State in [dsInsert, dsEdit];

  actCancelar.Enabled := dts.State in [dsInsert, dsEdit];
  btnCancelar.visible := dts.State in [dsInsert, dsEdit];

  pnlNavegacao.visible:= (dts.State in [dsBrowse]) and not(dts.DataSet.IsEmpty) and (dts.DataSet.RecordCount > 0);

end;

procedure TfrmCidades.edtCepFinalExit(Sender: TObject);
begin
  edtCepFinal.Text := FormataCEP(edtCepFinal.Text);
end;

procedure TfrmCidades.edtCepInicialExit(Sender: TObject);
begin
  edtCepInicial.Text := FormataCEP(edtCepInicial.Text);
end;

procedure TfrmCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.adoCidades.close;
  dm.spCidade.close;
  dm.spCidadeEditar.close;
  dm.spCidadeExcluir.close;
end;

procedure TfrmCidades.FormShow(Sender: TObject);
begin

  pnlCadastro.Visible := false;

  dts.DataSet     := dm.adoCidades;
  sComandoInicial := dm.adoCidades.SQL.Text;

  //Carrega o combo dos campos
  CarregaCamposCombo(dts, cbCamposFIltro);

  //abre os dados da tabela
  CarregaDados;

end;

procedure TfrmCidades.btnPrimeiroClick(Sender: TObject);
begin
  PosicaoRegistro('1');
end;

procedure TfrmCidades.btnProximoClick(Sender: TObject);
begin
  PosicaoRegistro('3');
end;

procedure TfrmCidades.btnRelatoriosClick(Sender: TObject);
begin
  try
    Application.CreateForm( TRelCidades, RelCidades);
    RelCidades.ShowModal;
  finally
    FreeAndNil(RelCidades);
  end;
end;

procedure TfrmCidades.btnVoltaClick(Sender: TObject);
begin
  PosicaoRegistro('2');
end;

procedure TfrmCidades.btnUltimoClick(Sender: TObject);
begin
  PosicaoRegistro('4');
end;

end.
