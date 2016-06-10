unit untCadastroUsuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB;

type
  TfrmCadastroUsuario = class(TForm)
    edtNome: TEdit;
    edtSenha: TEdit;
    edtConfirSenha: TEdit;
    edtEmail: TEdit;
    edtLogin: TEdit;
    btnCadastrar: TBitBtn;
    btnPesquisar: TBitBtn;
    btnExcluir: TBitBtn;
    btnLimpar: TBitBtn;
    btnSair: TBitBtn;
    cmbTipoUsuario: TComboBox;
    ADOTblCadaUsuario: TADOTable;
    DSQusuario: TDataSource;
    GroupBox1: TGroupBox;
    lblUsuarios: TLabel;
    lblNome: TLabel;
    lblSenha: TLabel;
    lblConfirSenha: TLabel;
    lblEmail: TLabel;
    lblTipoUsuario: TLabel;
    GroupBox2: TGroupBox;
    lblCadastroUsuario: TLabel;
    edtCodUsuario: TEdit;
    edtCodCurso: TEdit;
    btnPesqCurso: TButton;
    lblCodUsuario: TLabel;
    lblCodCurso: TLabel;
    edtDescricao: TEdit;
    ADOTblCadaUsuariopkcodusuario: TAutoIncField;
    ADOTblCadaUsuariosenha: TStringField;
    ADOTblCadaUsuarioemail: TStringField;
    ADOTblCadaUsuarionome: TStringField;
    ADOTblCadaUsuariologin: TStringField;
    ADOTblCadaUsuariofkcodtipousuario: TIntegerField;
    ADOTblCadaUsuariofkcodcurso: TIntegerField;
    ADOC_SAEP: TADOConnection;
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

uses unt_dm_principal;

{$R *.dfm}


procedure TfrmCadastroUsuario.btnCadastrarClick(Sender: TObject);
var usuario, senha, confirsenha, nome, email, tipousuario : string;
begin
  if edtLogin.Text = '' then
    showmessage('Deve Preencher Todos os Campos.')
  else
    if edtSenha.Text = '' then
      showmessage('Deve Preencher Todos os Campos.')
    else
      if edtConfirSenha.Text = '' then
        showmessage('Deve Preencher Todos os Campos.')
      else
        if edtNome.Text = '' then
          showmessage('Deve Preencher Todos os Campos.')
        else
          if edtEmail.Text = '' then
            showmessage('Deve Preencher Todos os Campos.')
          else
            if cmbTipoUsuario.Text = '' then
              showmessage('Deve Preencher Todos os Campos.')
            else
              if edtCodCurso.Text = '' then
                showmessage('Deve Preencher Todos os Campos.')
              else
            //testar se senha e confirmacao sao iguais
            if edtSenha.Text <> edtConfirSenha.Text  then
              showmessage('A senha de confirmação não é igual a senha original')
             else
          try
    if btnCadastrar.Enabled = false then
      begin
          ADOTblCadaUsuario.Append;
         ADOTblCadaUsuario.FieldByname('pkcodusuario').AsInteger := StrtoInt(edtCodUsuario.text);
      end
    else
     begin
      ADOC_SAEP.BeginTrans;
      ADOTblCadaUsuario.edit;
     end;


      ADOTblCadaUsuario.FieldByName('senha').AsString := edtSenha.text;
      ADOTblCadaUsuario.FieldByName('email').AsString := edtEmail.text;
      ADOTblCadaUsuario.FieldByName('nome').AsString := edtNome.text;
      ADOTblCadaUsuario.FieldByName('login').AsString := edtLogin.text;
      if      cmbTipoUsuario.text = 'Aluno'  Then
        ADOTblCadaUsuario.FieldByName('fkcodtipousuario').AsInteger := 1
      Else
        ADOTblCadaUsuario.FieldByName('fkcodtipousuario').AsInteger := 2;
      ADOTblCadaUsuario.FieldByName('fkcodcurso').AsInteger := StrToInt(edtCodCurso.Text);



     ADOTblCadaUsuario.post;

     ADOC_SAEP.CommitTrans;
     btnCadastrar.Enabled := True;

   except
      //on e:dbengineerror do
       begin
     //    unt_dm_principal.msgerro('erro no botão cadastrar')  ;
         //Desfazer, voltar, não confirmar
         ADOC_SAEP.RollbackTrans;
       end;
   end;


end;

procedure TfrmCadastroUsuario.btnLimparClick(Sender: TObject);
begin
  edtLogin.SetFocus;
  edtLogin.Text := '';
  edtSenha.Text := '';
  edtConfirSenha.Text := '';
  edtNome.Text := '';
  edtEmail.Text := '';
  cmbTipoUsuario.Text := '';
  edtCodCurso.Text := '';
end;

procedure TfrmCadastroUsuario.btnPesquisarClick(Sender: TObject);
begin
 // frmTelaPesquisa.show;
end;

procedure TfrmCadastroUsuario.btnExcluirClick(Sender: TObject);
begin
  try
    ADOTblCadaUsuario.locate('usuario', 'pkcodusuario', [LoPartialKey]);

    ADOTblCadaUsuario.delete;
    ADOC_SAEP.CommitTrans;
    edtcodusuario.text :='';
    edtLogin.text :='';
    edtNome.text :='';
    edtSenha.text :='';
    edtConfirSenha.text :='';
    edtEmail.text :='';
    cmbTipoUsuario.text :='';
    edtCodCurso.text :='';
    edtDescricao.text :='';

    
  except
    begin
      showmessage('erro botão cadastrar');
      aDOC_SAEP.RollbackTrans;
    end;
  end;
end;

procedure TfrmCadastroUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Messagedlg('Deseja Realmente Sair' , mtConfirmation,
                [mbyes, mbno], 0) = mrYes then
  else
    Action := CaNone;
end;

procedure TfrmCadastroUsuario.btnSairClick(Sender: TObject);
begin
Close;
end;

end.
