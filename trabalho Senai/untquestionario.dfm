object frmquestao01: Tfrmquestao01
  Left = 212
  Top = 110
  Width = 696
  Height = 480
  Caption = 'Questionario'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblquestao01: TLabel
    Left = 248
    Top = 16
    Width = 99
    Height = 22
    Caption = 'Quest'#227'o 01'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object lblquestao01_1: TLabel
    Left = 40
    Top = 56
    Width = 307
    Height = 18
    Caption = 'O que o espermatoz'#243'ide falou para o '#243'vulo?'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
  end
  object rdbsegunda: TRadioButton
    Left = 40
    Top = 136
    Width = 385
    Height = 17
    Caption = 'Deixa eu morar com voc'#234' porque a minha casa '#233' um saco.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object rdbterceira: TRadioButton
    Left = 40
    Top = 176
    Width = 289
    Height = 17
    Caption = 'Sabia que meus vizinhos s'#227'o uns pentelhos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object rdbquarta: TRadioButton
    Left = 40
    Top = 216
    Width = 297
    Height = 17
    Caption = 'Se sou o primeiro, '#233' por que mere'#231'o ser feliz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object rdbquinta: TRadioButton
    Left = 40
    Top = 256
    Width = 209
    Height = 17
    Caption = 'Tcham tcham rantam, tan tan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object bntproximo: TButton
    Left = 552
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Pr'#243'ximo'
    TabOrder = 4
    OnClick = bntproximoClick
  end
  object btngravar: TButton
    Left = 440
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 5
    OnClick = btngravarClick
  end
  object bntanterior: TButton
    Left = 328
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Anterior'
    TabOrder = 6
  end
  object rbdprimeira: TRadioButton
    Left = 40
    Top = 96
    Width = 225
    Height = 17
    Caption = 'Nossa !!! Pensei que fosse mais bonita !!!'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object ADOquestao: TADOConnection
    Left = 520
    Top = 16
  end
  object ADOTable1: TADOTable
    Left = 560
    Top = 16
  end
  object ADOTable2: TADOTable
    Left = 560
    Top = 56
  end
  object DataSource1: TDataSource
    Left = 600
    Top = 16
  end
  object DataSource2: TDataSource
    Left = 600
    Top = 56
  end
end
