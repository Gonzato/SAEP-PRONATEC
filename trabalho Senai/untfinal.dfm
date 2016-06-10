object frmfinal: Tfrmfinal
  Left = 213
  Top = 185
  Width = 656
  Height = 397
  Caption = 'tela Final'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnsair: TButton
    Left = 544
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 0
    OnClick = btnsairClick
  end
  object btnvisualizar: TButton
    Left = 264
    Top = 208
    Width = 113
    Height = 33
    Caption = 'Visualizar Resultado'
    TabOrder = 1
  end
  object ADO_final: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=postgres;' +
      'Data Source=saep;Initial Catalog=saep'
    Left = 24
    Top = 8
  end
  object ADOT_final: TADOTable
    Connection = ADO_final
    TableName = 'historicoprova'
    Left = 64
    Top = 8
  end
  object ds_final: TDataSource
    DataSet = ADOT_final
    Left = 104
    Top = 8
  end
end
