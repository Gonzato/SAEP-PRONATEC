unit untregistro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DB, ADODB;

type
  Tfrmregistro = class(TForm)
    lblregistro: TLabel;
    lblnome: TLabel;
    edtnome: TEdit;
    lblsobrenome: TLabel;
    edtsobrenome: TEdit;
    lblsexo: TLabel;
    cbxsexo: TComboBox;
    edtsenha: TEdit;
    lblsenha: TLabel;
    lblconfimar: TLabel;
    edtsenhac: TEdit;
    btncancelar: TButton;
    btngravar: TButton;
    btnsair: TButton;
    lblusuario: TLabel;
    edtusuario: TEdit;
    ADOC_saep: TADOConnection;
    ADOT_registro: TADOTable;
    DT_registro: TDataSource;
    procedure btnsairClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmregistro: Tfrmregistro;

implementation

uses untinicial;

{$R *.dfm}

procedure Tfrmregistro.btnsairClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmregistro.btncancelarClick(Sender: TObject);
begin
  frminicio.show;
end;

procedure Tfrmregistro.btngravarClick(Sender: TObject);
begin
    Try
  If btncancelar.enable = false then
  ADOT_registro.fieldbyname ('codxxxx').AsInteger:=StrToInt (edtxxxx.text)
    Else
	   Begin
	      ADOC_saep.BeginTrans;
        ADOT_registro.edit;
End;

    // preenchendo as Colunas do banco
 ADOT_registro.FieldByName ('nomexxxx').ASString:= edtxxxx.text;
    //gravar alteração no banco
 ADOT_registro.post;
    // confirmar a gravação
 ADOC_saep.CommitTrans;
  Btnxxxx.Enabled:=True;

Except
On e: edbengineerror do
Begin
	Funcao ('erro no botaõ salvar')
// desfazer, voltar, não confirmar
Adoc_xxxx.RollbackTrans;

end;

end.
