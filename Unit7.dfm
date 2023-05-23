object Form7: TForm7
  Left = 238
  Top = 129
  Width = 1201
  Height = 691
  Caption = 'GRAFIK STRINGGRID (REVISI)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = -5
    Top = -4
    Width = 1073
    Height = 661
    Color = clActiveCaption
    TabOrder = 0
    object l_1: TLabel
      Left = 152
      Top = 96
      Width = 144
      Height = 19
      Caption = 'TAHUN ANGKATAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_2: TLabel
      Left = 152
      Top = 136
      Width = 155
      Height = 19
      Caption = 'JUMLAH TERDAFTAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_3: TLabel
      Left = 152
      Top = 176
      Width = 82
      Height = 19
      Caption = 'FAKULTAS '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_4: TLabel
      Left = 224
      Top = 24
      Width = 518
      Height = 54
      Alignment = taCenter
      Caption = 'MENAMPILKAN DATA DI  STRINGGRID DAN GRAFIK'#13#10'(REVISI)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Vastago Grotesk Bold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Cbb1: TComboBox
      Left = 336
      Top = 96
      Width = 145
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
    end
    object Cbb2: TComboBox
      Left = 336
      Top = 176
      Width = 145
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 1
    end
    object Edt1: TEdit
      Left = 336
      Top = 136
      Width = 121
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object btn1: TButton
      Left = 152
      Top = 224
      Width = 97
      Height = 33
      Caption = 'ADD DATA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 264
      Top = 224
      Width = 113
      Height = 33
      Caption = 'CLEAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btn2Click
    end
    object Stringgrid1: TStringGrid
      Left = 520
      Top = 96
      Width = 385
      Height = 153
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      RowHeights = (
        24
        24
        25
        24
        24)
    end
    object Cht1: TChart
      Left = 136
      Top = 280
      Width = 777
      Height = 353
      AllowPanning = pmNone
      AllowZoom = False
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      BackWall.Pen.Visible = False
      Title.Text.Strings = (
        'TChart')
      AxisVisible = False
      ClipPoints = False
      Frame.Visible = False
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      View3DWalls = False
      TabOrder = 6
      object Series1: TPieSeries
        Marks.ArrowLength = 8
        Marks.Visible = True
        SeriesColor = clRed
        OtherSlice.Text = 'Other'
        PieValues.DateTime = False
        PieValues.Name = 'Pie'
        PieValues.Multiplier = 1.000000000000000000
        PieValues.Order = loNone
      end
    end
    object btn3: TButton
      Left = 384
      Top = 224
      Width = 113
      Height = 33
      Caption = 'CLEAR ALL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = btn3Click
    end
  end
end
