object frmselecaoprova: Tfrmselecaoprova
  Left = 192
  Top = 124
  Width = 831
  Height = 493
  Caption = 'Sele'#231#227'o de Provas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 320
    Top = 72
    Width = 150
    Height = 20
    Caption = 'Sele'#231#227'o de Simulado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object gpbtela: TGroupBox
    Left = 88
    Top = 112
    Width = 641
    Height = 249
    TabOrder = 0
    object lblsimulado: TLabel
      Left = 64
      Top = 168
      Width = 57
      Height = 16
      Caption = 'Simulado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbluc: TLabel
      Left = 64
      Top = 120
      Width = 111
      Height = 16
      Caption = 'Unidade Curricular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblcurso: TLabel
      Left = 64
      Top = 72
      Width = 110
      Height = 16
      Caption = 'Selecione o Curso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Sair: TButton
      Left = 528
      Top = 216
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
      OnClick = SairClick
    end
    object Confirmar: TButton
      Left = 432
      Top = 216
      Width = 75
      Height = 25
      Caption = 'Confirmar'
      TabOrder = 1
    end
    object cbxcurso: TComboBox
      Left = 208
      Top = 72
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 2
      Text = 'selecionar'
      Items.Strings = (
        'T'#233'cnico em Inform'#225'tica'
        'T'#233'cnico em Segura'#231'a do Trabalho'
        'Eletrecista Residencial')
    end
    object cbxun: TComboBox
      Left = 208
      Top = 120
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 3
      Text = 'selecionar'
    end
    object cbxsimulado: TComboBox
      Left = 208
      Top = 168
      Width = 145
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Text = 'selecionar'
      Items.Strings = (
        'Avalia'#231#227'o 1'
        'Avalia'#231#227'o 2'
        'Avalia'#231#227'o 3'
        'Avalia'#231#227'o 4'
        'Avalia'#231#227'o 5')
    end
  end
end
