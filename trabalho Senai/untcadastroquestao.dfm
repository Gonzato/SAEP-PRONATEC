object frmcadastro: Tfrmcadastro
  Left = 242
  Top = 125
  Width = 687
  Height = 538
  Caption = 'Registro Quest'#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblcadastro: TLabel
    Left = 184
    Top = 24
    Width = 292
    Height = 22
    Caption = 'Cadastro de Quest'#245'es - Professor'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblinforme: TLabel
    Left = 40
    Top = 128
    Width = 127
    Height = 18
    Caption = 'Informe a Quest'#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblresp1: TLabel
    Left = 56
    Top = 184
    Width = 60
    Height = 13
    Caption = 'Resposta 01'
  end
  object lblresp2: TLabel
    Left = 56
    Top = 232
    Width = 60
    Height = 13
    Caption = 'Resposta 02'
  end
  object lblresp3: TLabel
    Left = 56
    Top = 280
    Width = 60
    Height = 13
    Caption = 'Resposta 03'
  end
  object lblresp4: TLabel
    Left = 56
    Top = 328
    Width = 60
    Height = 13
    Caption = 'Resposta 04'
  end
  object lblresp5: TLabel
    Left = 56
    Top = 376
    Width = 60
    Height = 13
    Caption = 'Resposta 05'
  end
  object lblcoduc: TLabel
    Left = 40
    Top = 64
    Width = 66
    Height = 16
    Caption = 'C'#243'digo UC'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblcodquestao: TLabel
    Left = 40
    Top = 96
    Width = 98
    Height = 16
    Caption = 'C'#243'digo Quest'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object edtquestao: TEdit
    Left = 40
    Top = 152
    Width = 585
    Height = 21
    TabOrder = 0
  end
  object rdb1: TRadioButton
    Left = 40
    Top = 200
    Width = 17
    Height = 17
    TabOrder = 1
  end
  object rdb2: TRadioButton
    Left = 40
    Top = 248
    Width = 17
    Height = 17
    TabOrder = 2
  end
  object rdb3: TRadioButton
    Left = 40
    Top = 296
    Width = 17
    Height = 17
    TabOrder = 3
  end
  object rdb4: TRadioButton
    Left = 40
    Top = 344
    Width = 17
    Height = 17
    TabOrder = 4
  end
  object rdb5: TRadioButton
    Left = 40
    Top = 400
    Width = 17
    Height = 17
    TabOrder = 5
  end
  object edt1: TEdit
    Left = 56
    Top = 200
    Width = 561
    Height = 21
    TabOrder = 6
  end
  object edt2: TEdit
    Left = 56
    Top = 248
    Width = 561
    Height = 21
    TabOrder = 7
  end
  object edt3: TEdit
    Left = 56
    Top = 296
    Width = 561
    Height = 21
    TabOrder = 8
  end
  object edt4: TEdit
    Left = 56
    Top = 344
    Width = 561
    Height = 21
    TabOrder = 9
  end
  object edt5: TEdit
    Left = 56
    Top = 392
    Width = 561
    Height = 21
    TabOrder = 10
  end
  object btnexcluir: TButton
    Left = 352
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 11
    OnClick = btnexcluirClick
  end
  object btngravar: TButton
    Left = 440
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 12
    OnClick = btngravarClick
  end
  object btnsair: TButton
    Left = 528
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 13
    OnClick = btnsairClick
  end
  object bntlimpar: TButton
    Left = 176
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Limpar Tela'
    TabOrder = 14
    OnClick = bntlimparClick
  end
  object edtcodigo: TEdit
    Left = 152
    Top = 88
    Width = 73
    Height = 21
    TabOrder = 15
  end
  object btnincluir: TButton
    Left = 88
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 16
    OnClick = btnincluirClick
  end
  object edtcoduc: TEdit
    Left = 152
    Top = 56
    Width = 73
    Height = 21
    TabOrder = 17
  end
  object btnLocalizar: TButton
    Left = 264
    Top = 432
    Width = 75
    Height = 25
    Caption = 'Localizar'
    TabOrder = 18
    OnClick = btnlocalizarClick
  end
  object ds_questao: TDataSource
    DataSet = ADOT_questao
    Left = 80
    Top = 8
  end
  object ADOC_saep: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=postgres;' +
      'Data Source=saep;Initial Catalog=saep'
    Top = 8
  end
  object ADOT_questao: TADOTable
    Connection = ADOC_saep
    TableName = 'pergunta'
    Left = 40
    Top = 8
    object ADOT_questaopkcodperguntas: TAutoIncField
      FieldName = 'pkcodperguntas'
      ReadOnly = True
    end
    object ADOT_questaofkcoduc: TIntegerField
      FieldName = 'fkcoduc'
    end
    object ADOT_questaoperguntas: TStringField
      FieldName = 'perguntas'
      Size = 500
    end
  end
end
