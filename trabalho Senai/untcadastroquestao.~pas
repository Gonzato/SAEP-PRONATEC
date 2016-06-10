unit untcadastroquestao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, ADODB;

type
  Tfrmcadastro = class(TForm)
    lblcadastro: TLabel;
    lblinforme: TLabel;
    edtquestao: TEdit;
    rdb1: TRadioButton;
    rdb2: TRadioButton;
    rdb3: TRadioButton;
    rdb4: TRadioButton;
    rdb5: TRadioButton;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btnexcluir: TButton;
    btngravar: TButton;
    btnsair: TButton;
    bntlimpar: TButton;
    lblresp1: TLabel;
    lblresp2: TLabel;
    lblresp3: TLabel;
    lblresp4: TLabel;
    lblresp5: TLabel;
    ds_questao: TDataSource;
    ADOC_saep: TADOConnection;
    ADOT_questao: TADOTable;
    edtcodigo: TEdit;
    btnincluir: TButton;
    ADOT_questaopkcodperguntas: TAutoIncField;
    ADOT_questaofkcoduc: TIntegerField;
    ADOT_questaoperguntas: TStringField;
    edtcoduc: TEdit;
    btnLocalizar: TButton;
    lblcoduc: TLabel;
    lblcodquestao: TLabel;
    procedure btnsairClick(Sender: TObject);
    procedure bntlimparClick(Sender: TObject);
    procedure btnincluirClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadastro: Tfrmcadastro;

implementation

{$R *.dfm}

procedure Tfrmcadastro.btnsairClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmcadastro.bntlimparClick(Sender: TObject);
begin
  edtquestao.text := '';
  edt1.Text := '';
  edt2.Text := '';
  edt3.Text := '';
  edt4.Text := '';
  edt5.Text := '';
  edtquestao.SetFocus();
end;

procedure Tfrmcadastro.btnincluirClick(Sender: TObject);
begin
    Try
      ADOC_saep.begintrans; // abrindo transaçãona tela
      ADOT_questao.append; // inserindo dados na tela

      bntincluir.enable := true; // bloqueando o botão
    Except
      // chamar uma função para mensagem padrão
      Showmessage ('erro no botão novo')
    End;

end;

procedure Tfrmcadastro.btngravarClick(Sender: TObject);
begin
  Try
If btnincluir.enable = false then
  ADOT_questao.fieldbyname ('pkcodperguntas').AsInteger:=StrToInt (edtcodigo.text)
Else
	Begin
	  ADOC_saep.BeginTrans;
    ADOT_questao.edit;
  End;

// preenchendo as Colunas do banco
ADOT_questao.FieldByName ('fkcoduc').ASInteger:= IntToStr(edtcoduc.text);
//gravar alteração no banco
ADOT_questao.post;
// confirmar a gravação
Adoc_saep.CommitTrans;
Btnxxxx.Enabled:=True;

Except
On e: edbengineerror do
Begin
	Funcao ('erro no botaõ salvar')
// desfazer, voltar, não confirmar
Adoc_xxxx.RollbackTrans;
End;

end;

procedure Tfrmcadastro.btnexcluirClick(Sender: TObject);
Begin
Try
  // localizar banco de dados usando a chave primaria
  ADOT_questao.Locate ('perguntas','pkcodperguntas', [loPartialKey]);
  // apagar do dado
  ADOT_questao.DELETE;
  // CONFIRMAR A GRAVAÇÃO
  ADOC_saep.CommitTrans;
Except
  On e : edtengineerror do
  Begin
    //Funcao (erro no botao salvar)
    // desfazer , voltar, não confirmar
    ADOC_saep.RollbackTrans;
  End;
end;

end;

procedure Tfrmcadastro.btnLocalizarClick(Sender: TObject);
begin
 ADOT_questao.Filtered:=false;
 ADOT_questao.filter:='PERGUNTAS='+quotedstr (edtquestao.text);
 ADOT_questao.Filtered:= true;
end;

End.

