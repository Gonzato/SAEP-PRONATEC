unit untLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB;

type
  TfrmLogin = class(TForm)
    edtUsuario: TEdit;
    edtSenha: TEdit;
    btnCadastrar_se: TBitBtn;
    btnEntrar: TBitBtn;
    btnSair: TBitBtn;
    lblSenha: TLabel;
    lblUsuario: TLabel;
    gbrLogin: TGroupBox;
    ADOTblusuario: TADOTable;
    DSUsuario: TDataSource;
    ADOC_SAEP: TADOConnection;
    procedure btnSairClick(Sender: TObject);
    procedure btnEntrarClick(Sender: TObject);
    procedure edtUsuarioChange(Sender: TObject);
    procedure btnCadastrar_seClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

uses untPrincipal, unt_dm_principal;

{$R *.dfm}

procedure TfrmLogin.btnSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmLogin.btnEntrarClick(Sender: TObject);
Begin
  try
   begin
    if edtUsuario.Text = '' Then
      showmessage('O Usuário é Obrigatório')
    Else
      if edtSenha.Text = '' Then
        showmessage('A Senha é Obrigatório')
      Else
      begin
       ADOTblusuario.Refresh;
       ADOTblusuario.Filtered := False;
       ADOTblusuario.Filter := 'login = ' +quotedstr(edtUsuario.Text);
       ADOTblusuario.Filtered := True;

        If ADOTblusuario.RecordCount  = 0 Then
     //     unt_dm_principal.msgerro('Usuario não encontrado')
     showmessage('celia')
       Else
       begin

       ADOTblusuario.Filtered := False;
       ADOTblusuario.Filter := 'login = ' +quotedstr(edtUsuario.Text)+ ' and senha = ' +quotedstr(edtSenha.Text);
       ADOTblusuario.Filtered := True;

       If ADOTblusuario.RecordCount  = 0 Then
      //    unt_dm_principal.msgerro('Senha não encontrado')
      showmessage('celia')
       Else
       begin

            unt_dm_principal.g_usuario := edtUsuario.Text ;
       //marcos ver tipo usuario
       //ADOTbltipousuario.Filtered := False;
       //ADOTblusuario.Filter := pkcod;
       //ADOTblusuario.Filtered := True;
       //if record   > 0
            begin
              unt_dm_principal.g_tipousuario :=  '';//ADOTbltipousuario.FieldByName('descricao').AsString;
              unt_dm_principal.g_codtipousuario :=  ADOTblusuario.FieldByName('fkcodtipousuario').AsInteger;
              frmPrincipal.show   ;
            end
       //else
         //   mensagem erro

       end;
       end;
    end;
    end;
  except
  end;

End;

procedure TfrmLogin.edtUsuarioChange(Sender: TObject);
begin
edtUsuario.SetFocus;
end;

procedure TfrmLogin.btnCadastrar_seClick(Sender: TObject);
begin
//frmCadastroUsuario.show;
end;

procedure TfrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Messagedlg('Deseja Realmente Sair', mtConfirmation,
                [mbyes, mbno], 0) = mrYes Then
 //    dm_Principal.ADOC_SAEP.Connected := False
   else
    Action := CaNone;             

end;

procedure TfrmLogin.FormActivate(Sender: TObject);
begin
   ADOC_SAEP.Connected := true;
end;

end.
