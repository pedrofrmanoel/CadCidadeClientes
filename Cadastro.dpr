program Cadastro;

uses
  Vcl.Forms,
  uMenu in 'uMenu.pas' {frmMenu},
  uDM in 'uDM.pas' {dm: TDataModule},
  uCidades in 'uCidades.pas' {frmCidades},
  uFuncoes in 'uFuncoes.pas',
  uClientes in 'uClientes.pas' {frmClientes},
  uPesquisaCidades in 'uPesquisaCidades.pas' {frmPesquisaCidades},
  uRelCidades in 'uRelCidades.pas' {RelCidades},
  uRelClientes in 'uRelClientes.pas' {RelClientes},
  uPesquisaClientes in 'uPesquisaClientes.pas' {frmPesquisaClientes};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmMenu, frmMenu);
  Application.CreateForm(TfrmPesquisaClientes, frmPesquisaClientes);
  Application.Run;
end.
