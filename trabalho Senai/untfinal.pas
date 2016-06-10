unit untfinal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, jpeg, ExtCtrls;

type
  Tfrmfinal = class(TForm)
    btnsair: TButton;
    btnvisualizar: TButton;
    ADO_final: TADOConnection;
    ADOT_final: TADOTable;
    ds_final: TDataSource;
    procedure btnsairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfinal: Tfrmfinal;

implementation

{$R *.dfm}

procedure Tfrmfinal.btnsairClick(Sender: TObject);
begin
  CLOSE;
end;

end.
