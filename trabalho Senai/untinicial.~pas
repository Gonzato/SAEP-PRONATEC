unit untinicial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  Tfrminicio = class(TForm)
    lbltitulo: TLabel;
    lblsaepsub: TLabel;
    btnregistrar: TButton;
    btnentrar: TButton;
    btnsair: TButton;
    GroupBox1: TGroupBox;
    lblusuario: TLabel;
    edtusuario: TEdit;
    lblsenha: TLabel;
    edtsenha: TEdit;
    ADOC_saep: TADOConnection;
    ADOT_inicio: TADOTable;
    ds_inicio: TDataSource;
    procedure btnregistrarClick(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure btnentrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frminicio: Tfrminicio;

implementation

uses untregistro, untquestionario;

{$R *.dfm}

procedure Tfrminicio.btnregistrarClick(Sender: TObject);
begin
  frmregistro.show;
end;

procedure Tfrminicio.btnsairClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrminicio.btnentrarClick(Sender: TObject);
var usuario, senha : string;
begin
  if (edtusuario.Text = 'adm') and
    (edtsenha.Text = 'adm') then
    frmquestao01.show
      else
    showmessage ('Login e Senha inválidos. Falor inserir novamente');

end;

end.
