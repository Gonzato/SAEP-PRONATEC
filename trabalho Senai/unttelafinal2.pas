unit unttelafinal2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  Tfrmtelafinal2 = class(TForm)
    bbtfinalizar: TBitBtn;
    Image1: TImage;
    lblNomeUsuario: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure bbtfinalizarClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtelafinal2: Tfrmtelafinal2;

implementation

uses unt_dm_principal;

{$R *.dfm}


procedure Tfrmtelafinal2.FormCreate(Sender: TObject);
begin
 // Edit1.Text:=unt_dm_principal.g_usuario;
end;

procedure Tfrmtelafinal2.bbtfinalizarClick(Sender: TObject);
begin
  showmessage ('Obrigado por realizar o simulado SAEP');
  //alunos
  //unt_dm_principal.dm_Principal.ADOC_SAEP.active := false;
 // aplicattion terminated;
end;

procedure Tfrmtelafinal2.Edit1Change(Sender: TObject);
begin

  label2 = g_corretas

  if g_corretas := 1 to 13 then
  label3  := 'precisa estudar mais, capriche mais !'
else
  if g_corretas := 14 to 28 then
  label3 := 'voce foi neste teste'
else
  if label3 := 28 to 40 then
  label3 = 'parabéns voce e nosso orgulho';




end;

end.
