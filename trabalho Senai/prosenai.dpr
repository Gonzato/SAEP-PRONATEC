program prosenai;

uses
  Forms,
  unt_dm_principal in 'unt_dm_principal.pas' {dm_Principal: TDataModule},
  untCadastroUsuario in 'untCadastroUsuario.pas' {frmCadastroUsuario},
  untHistorico in 'untHistorico.pas' {frmHistorico},
  untLogin in 'untLogin.pas' {frmLogin},
  untPrincipal in 'untPrincipal.pas' {frmPrincipal},
  unttelafinal in 'unttelafinal.pas' {frmtelafinal},
  unttelafinal2 in 'unttelafinal2.pas' {frmtelafinal2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogin, frmLogin);
  Application.CreateForm(Tdm_Principal, dm_Principal);
  Application.CreateForm(TfrmCadastroUsuario, frmCadastroUsuario);
  Application.CreateForm(TfrmHistorico, frmHistorico);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(Tfrmtelafinal, frmtelafinal);
  Application.CreateForm(Tfrmtelafinal2, frmtelafinal2);
  Application.Run;
end.
