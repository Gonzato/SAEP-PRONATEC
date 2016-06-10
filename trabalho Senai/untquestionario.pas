unit untquestionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB;

type
  Tfrmquestao01 = class(TForm)
    lblquestao01: TLabel;
    lblquestao01_1: TLabel;
    rdbsegunda: TRadioButton;
    rdbterceira: TRadioButton;
    rdbquarta: TRadioButton;
    rdbquinta: TRadioButton;
    bntproximo: TButton;
    btngravar: TButton;
    bntanterior: TButton;
    rbdprimeira: TRadioButton;
    ADOquestao: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure bntproximoClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmquestao01: Tfrmquestao01;

implementation

uses untquestao2;

{$R *.dfm}

procedure Tfrmquestao01.bntproximoClick(Sender: TObject);
begin
  frmquestao2.show;
end;

procedure Tfrmquestao01.btngravarClick(Sender: TObject);
begin
    try
    
end;

end.
