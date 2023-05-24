object Form1: TForm1
  Left = 179
  Top = 131
  Width = 870
  Height = 450
  Caption = 'PRAKTEK MANDIRI_1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 88
    Top = 56
    Width = 53
    Height = 13
    Caption = 'INPUTAN 1'
  end
  object lbl2: TLabel
    Left = 88
    Top = 80
    Width = 56
    Height = 13
    Caption = 'INPUTAN 2 '
  end
  object edt1: TEdit
    Left = 176
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 176
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btn1: TButton
    Left = 344
    Top = 40
    Width = 105
    Height = 49
    Caption = 'proses semua'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 352
    Top = 96
    Width = 75
    Height = 25
    Caption = 'KELUAR'
    TabOrder = 3
    OnClick = btn2Click
  end
  object grp1: TGroupBox
    Left = 24
    Top = 152
    Width = 449
    Height = 185
    Caption = 'NILAI DIPROSES'
    TabOrder = 4
    object lbl3: TLabel
      Left = 40
      Top = 16
      Width = 73
      Height = 13
      Caption = 'HASIL TAMBAH'
    end
    object lbl4: TLabel
      Left = 40
      Top = 48
      Width = 73
      Height = 13
      Caption = 'HASIL KURANG'
    end
    object lbl5: TLabel
      Left = 40
      Top = 80
      Width = 54
      Height = 13
      Caption = 'HASIL KALI'
    end
    object lbl6: TLabel
      Left = 32
      Top = 120
      Width = 90
      Height = 13
      Caption = 'HASIL PEMBAGIAN'
    end
    object edt3: TEdit
      Left = 144
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edt4: TEdit
      Left = 144
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edt5: TEdit
      Left = 144
      Top = 80
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edt6: TEdit
      Left = 144
      Top = 120
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object btn3: TButton
      Left = 320
      Top = 16
      Width = 75
      Height = 25
      Caption = '+'
      TabOrder = 4
    end
    object btn4: TButton
      Left = 320
      Top = 48
      Width = 75
      Height = 25
      Caption = '-'
      TabOrder = 5
    end
    object btn5: TButton
      Left = 320
      Top = 80
      Width = 75
      Height = 25
      Caption = '*'
      TabOrder = 6
    end
    object btn6: TButton
      Left = 320
      Top = 120
      Width = 75
      Height = 25
      Caption = '/'
      TabOrder = 7
    end
  end
end
