unit uClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.ImgList,
  Vcl.ActnList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Data.DB, StrUtils;

type
  TfrmClientes = class(TForm)
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
    edtFone: TEdit;
    Label7: TLabel;
    edtEmail: TEdit;
    Label8: TLabel;
    edtEndereco: TEdit;
    Label9: TLabel;
    edtCPFCNPJ: TEdit;
    Label10: TLabel;
    edtComplemento: TEdit;
    Label11: TLabel;
    edtBairro: TEdit;
    Label12: TLabel;
    edtCidade: TEdit;
    edtnCidade: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    edtCep: TEdit;
    spPesquisaCidade: TSpeedButton;
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
    procedure edtCPFCNPJExit(Sender: TObject);
    procedure edtCepExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtFoneExit(Sender: TObject);
    procedure spPesquisaCidadeClick(Sender: TObject);
    procedure edtCidadeExit(Sender: TObject);
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
  frmClientes: TfrmClientes;

implementation

{$R *.dfm}

uses uDM, uFuncoes, uPesquisaCidades, uRelClientes;

procedure tfrmClientes.PosicaoRegistro(Tipo:String);
begin

  if      tipo = '1' then dts.dataset.First
  else if tipo = '2' then dts.dataset.Prior
  else if tipo = '3' then dts.dataset.Next
  else if tipo = '4' then dts.dataset.Last;

end;

procedure TfrmClientes.spPesquisaCidadeClick(Sender: TObject);
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

procedure TfrmClientes.Button2Click(Sender: TObject);
begin
  CarregaDados;
end;

procedure TfrmClientes.CarregaDados;
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

procedure TfrmClientes.actAlterarExecute(Sender: TObject);
begin
  edtCodigo.Text      := dm.adoClientescodigo_cliente.AsString;
  edtCPFCNPJ.Text     := dm.adoClientescgc_cpf_cliente.AsString;
  edtNome.Text        := dm.adoClientesnome.AsString;
  edtEndereco.Text    := dm.adoClientesendereco.AsString;
  edtComplemento.Text := dm.adoClientescomplemento.AsString;
  edtBairro.Text      := dm.adoClientesbairro.AsString;
  edtCidade.Text      := dm.adoClientescodigo_cidade.AsString;
  edtnCidade.Text     := dm.adoClientescidade.AsString+' / '+dm.adoClientesestado.AsString ;
  edtCep.Text         := dm.adoClientescep.AsString;
  edtFone.Text        := dm.adoClientestelefone.AsString;
  edtEmail.Text       := dm.adoClientese_mail.AsString;

  pnlCadastro.Visible := True;
  pnlDados.Visible    := false;

  dts.DataSet.Edit;
  edtCPFCNPJ.setfocus;
end;

procedure TfrmClientes.actCancelarExecute(Sender: TObject);
begin
  pnlCadastro.Visible := false;
  pnlDados.Visible    := true;

  dts.DataSet.Cancel;
  CarregaDados;
end;

procedure TfrmClientes.actExcluirExecute(Sender: TObject);
begin
  if ( Messagedlg('Deseja excluir o registro ?', mtconfirmation, [mbYes, mbNo], 0) = mrYes) Then begin
    try
      dm.spClienteExcluir.close;
      dm.spClienteExcluir.ProcedureName := 'excluircliente;1';
      dm.spClienteExcluir.Parameters.ParamByName('@codigo_cliente').Value := dm.adoClientescodigo_cliente.AsString;
      dm.spClienteExcluir.ExecProc;

      actCancelarExecute(self);

      MessageDlg('Exclusão realizada com sucesso!',mtConfirmation,[mbOK],0);

    except
      ShowMessage('Erro para excluir !')
    end;

  end;
end;

procedure TfrmClientes.actGravarExecute(Sender: TObject);
var sErro :String;
begin
  try
    sErro := '';

    if trim(edtCPFCNPJ.Text)    = '' then sErro := ifthen(sErro = '','',sErro+', ')+' CPF/CNPJ';
    if trim(edtNome.Text)       = '' then sErro := ifthen(sErro = '','',sErro+', ')+' Nome';
    if trim(edtEndereco.Text)   = '' then sErro := ifthen(sErro = '','',sErro+', ')+' endereço';
    if trim(edtBairro.Text)     = '' then sErro := ifthen(sErro = '','',sErro+', ')+' bairro';
    if trim(edtCidade.Text)     = '' then sErro := ifthen(sErro = '','',sErro+', ')+' código cidade';
    if trim(edtCep.Text)        = '' then sErro := ifthen(sErro = '','',sErro+', ')+' cep';

    if sErro <> '' then begin
      ShowMessage('Verifique os campos:'+sErro);
      exit;
    end;

    try
      dm.adoAuxiliar.close;
      dm.adoAuxiliar.SQL.Clear;
      dm.adoAuxiliar.SQL.Add('select * from cidades '+
                        'WHERE codigo_cidade = '+edtCidade.Text+
                        ' and cep_inicial <='+QuotedStr(edtcep.text)+
                        ' and cep_final   >='+QuotedStr(edtcep.text));
      dm.adoAuxiliar.Open;

      if dm.adoAuxiliar.IsEmpty then begin
        ShowMessage('Cep fora do intervalo da cidade!');
        exit;
      end;

    finally
      dm.adoAuxiliar.close;
    end;


    dm.spCliente.close;
    if dts.State = dsInsert then begin

      dm.spCliente.ProcedureName := 'inserircliente;1';

      dm.spCliente.Parameters.ParamByName('@cgc_cpf_cliente').Value := trim(edtCPFCNPJ.Text);
      dm.spCliente.Parameters.ParamByName('@nome').Value            := trim(edtNome.Text);
      dm.spCliente.Parameters.ParamByName('@endereco').Value        := trim(edtEndereco.Text);
      dm.spCliente.Parameters.ParamByName('@complemento').Value     := trim(edtComplemento.Text);
      dm.spCliente.Parameters.ParamByName('@bairro').Value          := trim(edtBairro.Text);
      dm.spCliente.Parameters.ParamByName('@codigo_cidade').Value   := trim(edtCidade.Text);
      dm.spCliente.Parameters.ParamByName('@cep').Value             := trim(edtCep.Text);
      dm.spCliente.Parameters.ParamByName('@telefone').Value        := trim(edtFone.Text);
      dm.spCliente.Parameters.ParamByName('@e_mail').Value          := trim(edtEmail.Text);
      dm.spCliente.ExecProc;
    end;

    if dts.State = dsEdit   then begin

      dm.spClienteEditar.ProcedureName := 'editarcliente;1';

      dm.spClienteEditar.Parameters.ParamByName('@codigo_cidade').Value   := trim(edtCodigo.Text);
      dm.spClienteEditar.Parameters.ParamByName('@cgc_cpf_cliente').Value := trim(edtCPFCNPJ.Text);
      dm.spClienteEditar.Parameters.ParamByName('@nome').Value            := trim(edtNome.Text);
      dm.spClienteEditar.Parameters.ParamByName('@endereco').Value        := trim(edtEndereco.Text);
      dm.spClienteEditar.Parameters.ParamByName('@complemento').Value     := trim(edtComplemento.Text);
      dm.spClienteEditar.Parameters.ParamByName('@bairro').Value          := trim(edtBairro.Text);
      dm.spClienteEditar.Parameters.ParamByName('@codigo_cidade').Value   := trim(edtCidade.Text);
      dm.spClienteEditar.Parameters.ParamByName('@cep').Value             := trim(edtCep.Text);
      dm.spClienteEditar.Parameters.ParamByName('@telefone').Value        := trim(edtFone.Text);
      dm.spClienteEditar.Parameters.ParamByName('@e_mail').Value          := trim(edtEmail.Text);
      dm.spClienteEditar.ExecProc;
    end;

    actCancelarExecute(self);
    MessageDlg('Operação realizada com sucesso!',mtConfirmation,[mbOK],0);

  except
    ShowMessage('Erro para gravar !');
  end;
end;

procedure TfrmClientes.actIncluirExecute(Sender: TObject);
begin

  edtCodigo.Text      := '';
  edtCPFCNPJ.Text     := '';
  edtNome.Text        := '';
  edtEndereco.Text    := '';
  edtComplemento.Text := '';
  edtBairro.Text      := '';
  edtCidade.Text      := '';
  edtnCidade.Text     := '';
  edtCep.Text         := '';
  edtFone.Text        := '';
  edtEmail.Text       := '';

  pnlCadastro.Visible := True;
  pnlDados.Visible    := false;

  dts.DataSet.Insert;
  edtCPFCNPJ.setfocus;

end;

procedure TfrmClientes.btnPesquisarClick(Sender: TObject);
begin
  CarregaDados;
end;

procedure TfrmClientes.dtsStateChange(Sender: TObject);
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

procedure TfrmClientes.edtCepExit(Sender: TObject);
begin

  edtcep.text := FormataCEP(edtcep.text);

end;

procedure TfrmClientes.edtCidadeExit(Sender: TObject);
begin

  if SomenteNumeros(TRIM(edtCidade.Text)) = '' then begin
    ShowMessage('Código da cidade inválido!');
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

procedure TfrmClientes.edtCPFCNPJExit(Sender: TObject);
begin
  edtCPFCNPJ.Text := MascaraCpfCnpj(edtCPFCNPJ.Text);
end;

procedure TfrmClientes.edtFoneExit(Sender: TObject);
var sFone :String;
begin

  sFone := tiramascara(trim(edtFone.Text));
  if length(sFone) = 11 then
       dm.adoClientestelefone.asstring := FormataTelefoneCelular('C',sFone)
  else dm.adoClientestelefone.asstring := FormataTelefoneCelular('F',sFone);

end;

procedure TfrmClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.adoClientes.close;
  dm.spCliente.close;
  dm.spClienteEditar.close;
  dm.spClienteExcluir.close;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin

  pnlCadastro.Visible := false;

  dts.DataSet     := dm.adoClientes;
  sComandoInicial := dm.adoClientes.SQL.Text;

  //Carrega o combo dos campos
  CarregaCamposCombo(dts, cbCamposFIltro);

  //abre os dados da tabela
  CarregaDados;

end;

procedure TfrmClientes.btnPrimeiroClick(Sender: TObject);
begin
  PosicaoRegistro('1');
end;

procedure TfrmClientes.btnProximoClick(Sender: TObject);
begin
  PosicaoRegistro('3');
end;

procedure TfrmClientes.btnRelatoriosClick(Sender: TObject);
begin
  try
    Application.CreateForm( TRelClientes, RelClientes);
    RelClientes.ShowModal;
  finally
    FreeAndNil(RelClientes);
  end;
end;

procedure TfrmClientes.btnVoltaClick(Sender: TObject);
begin
  PosicaoRegistro('2');
end;

procedure TfrmClientes.btnUltimoClick(Sender: TObject);
begin
  PosicaoRegistro('4');
end;

end.
