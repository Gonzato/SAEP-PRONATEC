unit unt_dm_principal;

interface

uses
  SysUtils, Classes, Messages,
  Windows, Variants,  Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  Tdm_Principal = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure msgerro (minhamsgerro : string);
  end;

var
  dm_Principal: Tdm_Principal;
  g_usuario, g_senha, g_tipousuario, g_nomeusuario : string;
  g_codtipousuario, g_corretas : integer;

implementation

{$R *.dfm}

procedure Tdm_Principal.msgerro (minhamsgerro : string);
begin
  showmessage('SISTEMA SIMULADO SAEP - PRONATEC II '+ minhamsgerro);
end;

end.
