unit Untselecaoprovas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmselecaoprova = class(TForm)
    gpbtela: TGroupBox;
    Sair: TButton;
    Confirmar: TButton;
    lblsimulado: TLabel;
    lbluc: TLabel;
    lblcurso: TLabel;
    cbxcurso: TComboBox;
    cbxun: TComboBox;
    cbxsimulado: TComboBox;
    Label1: TLabel;
    procedure SairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmselecaoprova: Tfrmselecaoprova;

implementation

{$R *.dfm}

procedure Tfrmselecaoprova.SairClick(Sender: TObject);
begin
  Close
end;

end.
