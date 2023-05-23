object Form3: TForm3
  Left = 68
  Top = 59
  Width = 712
  Height = 531
  Caption = 'LATIHAN 2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = -8
    Top = -8
    Width = 705
    Height = 489
    Caption = 'pnl1'
    TabOrder = 0
    object l_1: TLabel
      Left = 72
      Top = 104
      Width = 78
      Height = 19
      Caption = 'INPUTAN1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_2: TLabel
      Left = 72
      Top = 144
      Width = 78
      Height = 19
      Caption = 'INPUTAN2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_7: TLabel
      Left = 240
      Top = 32
      Width = 156
      Height = 27
      Caption = 'KALKULATOR 2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Vastago Grotesk Bold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object grp1: TGroupBox
      Left = 64
      Top = 192
      Width = 481
      Height = 201
      Caption = 'NILAI DIPROSES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object l_3: TLabel
        Left = 16
        Top = 32
        Width = 104
        Height = 18
        Caption = 'HASIL TAMBAH'
      end
      object l_4: TLabel
        Left = 16
        Top = 72
        Width = 102
        Height = 18
        Caption = 'HASIL KURANG'
      end
      object l_5: TLabel
        Left = 16
        Top = 112
        Width = 76
        Height = 18
        Caption = 'HASIL KALI'
      end
      object l_6: TLabel
        Left = 16
        Top = 152
        Width = 79
        Height = 18
        Caption = 'HASIL BAGI'
      end
      object Edttambah: TEdit
        Left = 144
        Top = 32
        Width = 177
        Height = 26
        TabOrder = 0
      end
      object Edtkurang: TEdit
        Left = 144
        Top = 72
        Width = 177
        Height = 26
        TabOrder = 1
      end
      object Edtkali: TEdit
        Left = 144
        Top = 112
        Width = 177
        Height = 26
        TabOrder = 2
      end
      object Edtbagi: TEdit
        Left = 144
        Top = 152
        Width = 177
        Height = 26
        TabOrder = 3
      end
      object btn_2: TButton
        Left = 352
        Top = 32
        Width = 75
        Height = 25
        Caption = '+'
        TabOrder = 4
        OnClick = btn_2Click
      end
      object btn_3: TButton
        Left = 352
        Top = 72
        Width = 75
        Height = 25
        Caption = '-'
        TabOrder = 5
        OnClick = btn_3Click
      end
      object btn_4: TButton
        Left = 352
        Top = 112
        Width = 75
        Height = 25
        Caption = 'x'
        TabOrder = 6
        OnClick = btn_4Click
      end
      object btn_5: TButton
        Left = 352
        Top = 152
        Width = 75
        Height = 25
        Caption = ':'
        TabOrder = 7
        OnClick = btn_5Click
      end
    end
    object Edtinput1: TEdit
      Left = 208
      Top = 104
      Width = 153
      Height = 21
      TabOrder = 1
    end
    object Edtinput2: TEdit
      Left = 208
      Top = 144
      Width = 153
      Height = 21
      TabOrder = 2
    end
    object btn_1: TButton
      Left = 400
      Top = 104
      Width = 129
      Height = 57
      Caption = 'PROSES SEMUA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn_1Click
    end
  end
end
