object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 488
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 45
    Width = 60
    Height = 13
    Caption = 'Chave PIX:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 80
    Top = 96
    Width = 69
    Height = 13
    Caption = 'Benefici'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 80
    Top = 152
    Width = 41
    Height = 13
    Caption = 'Cidade:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 80
    Top = 200
    Width = 32
    Height = 13
    Caption = 'Valor:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 80
    Top = 256
    Width = 303
    Height = 13
    Caption = 'Refer'#234'ncia do Pagamento(Sem Caracteres Especiais):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LabelPayLoad: TLabel
    Left = 8
    Top = 384
    Width = 17
    Height = 13
    Caption = 'Pix'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtChave: TEdit
    Left = 80
    Top = 64
    Width = 258
    Height = 21
    TabOrder = 0
  end
  object edtBeneficiario: TEdit
    Left = 80
    Top = 112
    Width = 258
    Height = 21
    TabOrder = 1
  end
  object edtCidade: TEdit
    Left = 80
    Top = 168
    Width = 258
    Height = 21
    TabOrder = 2
  end
  object edtValor: TEdit
    Left = 80
    Top = 216
    Width = 258
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 160
    Top = 344
    Width = 113
    Height = 25
    Caption = 'Gerar Pix'
    TabOrder = 4
    OnClick = Button1Click
  end
  object edtpayload: TEdit
    Left = 8
    Top = 400
    Width = 433
    Height = 21
    TabOrder = 5
  end
  object edtRef: TEdit
    Left = 80
    Top = 272
    Width = 258
    Height = 21
    TabOrder = 6
  end
end
