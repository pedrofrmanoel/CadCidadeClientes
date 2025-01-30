unit uMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ActnList, Vcl.Menus, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls;

type
  TfrmMenu = class(TForm)
    MainMenu1: TMainMenu;
    ActionList1: TActionList;
    actClientes: TAction;
    actCidades: TAction;
    Cadastros1: TMenuItem;
    Cidades1: TMenuItem;
    Clientes1: TMenuItem;
    sbMenu: TStatusBar;
    actSair: TAction;
    Sair1: TMenuItem;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    ImageList1: TImageList;
    procedure FormShow(Sender: TObject);
    procedure actSairExecute(Sender: TObject);
    procedure actCidadesExecute(Sender: TObject);
    procedure actClientesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenu: TfrmMenu;

implementation

{$R *.dfm}

uses uDM, uCidades, uClientes;

procedure TfrmMenu.actCidadesExecute(Sender: TObject);
begin
  try
    Application.CreateForm( TfrmCidades, frmCidades);
    frmCidades.ShowModal;
  finally
    FreeAndNil(frmCidades);
  end;
end;

procedure TfrmMenu.actClientesExecute(Sender: TObject);
begin
  try
    Application.CreateForm( TfrmClientes, frmClientes);
    frmClientes.ShowModal;
  finally
    FreeAndNil(frmClientes);
  end;
end;

procedure TfrmMenu.actSairExecute(Sender: TObject);
begin
  if ( Messagedlg('Deseja sair do sistema ?', mtconfirmation, [mbYes, mbNo], 0) = mrYes) Then begin

    dm.adoAuxiliar.Close;

    dm.adoCidades.Close;
    dm.spCidade.Close;
    dm.spCidadeEditar.Close;
    dm.spCidadeExcluir.Close;

    dm.adoClientes.Close;
    dm.spCliente.Close;
    dm.spClienteEditar.Close;
    dm.spClienteExcluir.Close;

    dm.Conexao.Close;
    dm.Conexao.connected := False;

    Application.Terminate;
  end;

end;

procedure TfrmMenu.FormShow(Sender: TObject);
var sSaudacao :string;
begin
  sSaudacao := 'Boa Noite, ';
  if ( time >= 0.25 ) and ( time < 0.5  ) then sSaudacao := 'Bom Dia, ';
  if ( time >= 0.5  ) and ( time < 0.75 ) then sSaudacao := 'Boa Tarde, ';

  sbMenu.Panels[0].Text := sSaudacao + ' hoje é ' + FormatDateTime('dddddd', date);
end;

end.
