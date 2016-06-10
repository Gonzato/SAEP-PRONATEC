object frmregistro: Tfrmregistro
  Left = 218
  Top = 134
  Width = 623
  Height = 440
  Caption = 'frmregistro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblregistro: TLabel
    Left = 200
    Top = 16
    Width = 226
    Height = 22
    Caption = 'REGISTRO DE USU'#193'RIO'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblnome: TLabel
    Left = 48
    Top = 96
    Width = 38
    Height = 16
    Caption = 'Nome '
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblsobrenome: TLabel
    Left = 48
    Top = 136
    Width = 66
    Height = 16
    Caption = 'Sobrenome'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblsexo: TLabel
    Left = 48
    Top = 176
    Width = 30
    Height = 16
    Caption = 'Sexo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblsenha: TLabel
    Left = 48
    Top = 248
    Width = 37
    Height = 16
    Caption = 'Senha'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblconfimar: TLabel
    Left = 48
    Top = 288
    Width = 55
    Height = 16
    Caption = 'Confirmar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblusuario: TLabel
    Left = 48
    Top = 208
    Width = 82
    Height = 16
    Caption = 'Nome Usu'#225'rio'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object edtnome: TEdit
    Left = 160
    Top = 88
    Width = 369
    Height = 21
    TabOrder = 0
  end
  object edtsobrenome: TEdit
    Left = 160
    Top = 128
    Width = 369
    Height = 21
    TabOrder = 1
  end
  object cbxsexo: TComboBox
    Left = 160
    Top = 168
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = '-- SELECIONAR -- '
    Items.Strings = (
      'Masculino'
      'Feminino')
  end
  object edtsenha: TEdit
    Left = 160
    Top = 248
    Width = 121
    Height = 21
    MaxLength = 10
    PasswordChar = '*'
    TabOrder = 3
  end
  object edtsenhac: TEdit
    Left = 160
    Top = 288
    Width = 121
    Height = 21
    MaxLength = 10
    PasswordChar = '*'
    TabOrder = 4
  end
  object btncancelar: TButton
    Left = 312
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = btncancelarClick
  end
  object btngravar: TButton
    Left = 408
    Top = 352
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 6
    OnClick = btngravarClick
  end
  object btnsair: TButton
    Left = 504
    Top = 352
    Width = 83
    Height = 25
    Caption = 'Sair'
    TabOrder = 7
    OnClick = btnsairClick
  end
  object edtusuario: TEdit
    Left = 160
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object ADOC_saep: TADOConnection
    Left = 16
    Top = 16
  end
  object ADOT_registro: TADOTable
    Left = 56
    Top = 16
  end
  object DT_registro: TDataSource
    Left = 96
    Top = 16
  end
end
