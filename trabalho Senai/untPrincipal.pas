unit untPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ExtCtrls, ComCtrls, DB, ADODB;

type
  TfrmPrincipal = class(TForm)
    meumenu: TMainMenu;
    mmInicio: TMenuItem;
    mmCadastro: TMenuItem;
    mmRealizar: TMenuItem;
    mmAjuda: TMenuItem;
    mmSair: TMenuItem;
    StatusBar1: TStatusBar;
    procedure mmSairClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses unt_dm_principal;

{$R *.dfm}

procedure TfrmPrincipal.mmSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
Try
  begin

  if unt_dm_principal.g_codtipousuario = 1 then
    mmCadastro.Visible:= false
    else
      if unt_dm_principal.g_codtipousuario = 2 then
        mmRealizar.Visible:= false;

    StatusBar1.Panels [0].Text := unt_dm_principal.g_nomeusuario;
    StatusBar1.Panels [1].Text := unt_dm_principal.g_tipousuario;
   if (time >= strtotime('00:00:00'))and (time < strtotime('11:59:59')) then
    StatusBar1.Panels [2].Text := 'Bom Dia ';
   if (time >= strtotime('12:00:00'))and (time < strtotime('17:59:59')) then
    StatusBar1.Panels [2].Text :=  'Boa Tarde ';
   if (time >= strtotime('18:00:00'))and (time < strtotime('23:59:59')) then
    StatusBar1.Panels [2].Text := 'Boa Noite ';
    StatusBar1.Panels [3].Text := ' '+formatdatetime ('dddd","dd" de "mmmm" de "yyyy',now);


   end;
 except
 end;
end;

end.




