object frminicio: Tfrminicio
  Left = 192
  Top = 136
  Width = 663
  Height = 427
  Caption = 'Tela Inicial'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbltitulo: TLabel
    Left = 278
    Top = 0
    Width = 71
    Height = 32
    Caption = 'SAEP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -27
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblsaepsub: TLabel
    Left = 72
    Top = 56
    Width = 501
    Height = 24
    Caption = 'Sistema de Avalia'#231#227'o de  Desempenho de Estudante '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 64
    Top = 120
    Width = 313
    Height = 129
    TabOrder = 3
    object lblusuario: TLabel
      Left = 48
      Top = 27
      Width = 64
      Height = 22
      Caption = 'Usu'#225'rio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lblsenha: TLabel
      Left = 56
      Top = 67
      Width = 54
      Height = 22
      Caption = 'Senha'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edtusuario: TEdit
      Left = 120
      Top = 28
      Width = 129
      Height = 21
      TabOrder = 0
    end
    object edtsenha: TEdit
      Left = 120
      Top = 68
      Width = 129
      Height = 21
      MaxLength = 10
      PasswordChar = '*'
      TabOrder = 1
    end
  end
  object btnregistrar: TButton
    Left = 304
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Registrar'
    TabOrder = 0
    OnClick = btnregistrarClick
  end
  object btnentrar: TButton
    Left = 400
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Entrar'
    TabOrder = 1
    OnClick = btnentrarClick
  end
  object btnsair: TButton
    Left = 496
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 2
    OnClick = btnsairClick
  end
  object ADOC_saep: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=postgres;' +
      'Data Source=saep;Initial Catalog=saep'
    Left = 16
    Top = 8
  end
  object ADOT_inicio: TADOTable
    Active = True
    Connection = ADOC_saep
    CursorType = ctStatic
    TableName = 'usuario'
    Left = 56
    Top = 8
  end
  object ds_inicio: TDataSource
    DataSet = ADOT_inicio
    Left = 96
    Top = 8
  end
end
