object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Carregar Arquivos'
  ClientHeight = 285
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 257
    Height = 225
  end
  object Memo1: TMemo
    Left = 271
    Top = 8
    Width = 306
    Height = 225
    TabOrder = 0
  end
  object btn_imagem: TButton
    Left = 80
    Top = 239
    Width = 105
    Height = 38
    Caption = 'Carregar Imagem'
    TabOrder = 1
    OnClick = btn_imagemClick
  end
  object btn_texto: TButton
    Left = 312
    Top = 239
    Width = 97
    Height = 38
    Caption = 'Carregar Texto'
    TabOrder = 2
    OnClick = btn_textoClick
  end
  object btn_salvar: TButton
    Left = 464
    Top = 239
    Width = 89
    Height = 38
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = btn_salvarClick
  end
  object dg_text: TOpenTextFileDialog
    Filter = 'Arquivos de Texto|*.txt'
    Left = 528
    Top = 8
  end
  object dg_img: TOpenPictureDialog
    Left = 224
    Top = 16
  end
  object dg_save: TSaveDialog
    Filter = 'Arquivos de Texto|*.txt'
    Left = 472
    Top = 120
  end
end
