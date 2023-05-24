object Form9: TForm9
  Left = 433
  Top = 124
  Width = 787
  Height = 745
  Caption = 'TAMBAH DATA JADWAL'
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
    Left = -16
    Top = 0
    Width = 689
    Height = 785
    Color = clSkyBlue
    TabOrder = 0
    object l_1: TLabel
      Left = 64
      Top = 32
      Width = 456
      Height = 25
      Caption = 'TAMBAH DATA JADWAL PELAJARAN PRAKTIKUM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Vastago Grotesk Bold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object l_2: TLabel
      Left = 56
      Top = 80
      Width = 51
      Height = 19
      Caption = 'KELAS '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_3: TLabel
      Left = 56
      Top = 112
      Width = 110
      Height = 19
      Caption = 'MATA KULIAH '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_4: TLabel
      Left = 56
      Top = 144
      Width = 88
      Height = 19
      Caption = 'JAM MULAI '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_5: TLabel
      Left = 56
      Top = 176
      Width = 87
      Height = 19
      Caption = 'JAM AKHIR '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_6: TLabel
      Left = 56
      Top = 208
      Width = 38
      Height = 19
      Caption = 'HARI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_7: TLabel
      Left = 56
      Top = 240
      Width = 73
      Height = 19
      Caption = 'TANGGAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_8: TLabel
      Left = 56
      Top = 272
      Width = 82
      Height = 19
      Caption = 'RUANGAN]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_9: TLabel
      Left = 56
      Top = 304
      Width = 94
      Height = 19
      Caption = 'KEHADIRAN '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object l_10: TLabel
      Left = 432
      Top = 232
      Width = 6
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edtkelas: TEdit
      Left = 200
      Top = 80
      Width = 329
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edtmatkul: TEdit
      Left = 200
      Top = 112
      Width = 329
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edtjmulai: TEdit
      Left = 200
      Top = 144
      Width = 329
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Edtjakhir: TEdit
      Left = 200
      Top = 176
      Width = 329
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Cbbhari: TComboBox
      Left = 200
      Top = 208
      Width = 169
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 4
      Text = '-- PILIH HARI --'
      Items.Strings = (
        'SENIN'
        'SELASA'
        'RABU'
        'KAMIS'
        'JUM'#39'AT'
        'SABTU'
        'MINGGU')
    end
    object Edtruangan: TEdit
      Left = 200
      Top = 272
      Width = 329
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
    object Edthadir: TEdit
      Left = 200
      Top = 304
      Width = 329
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
    end
    object btn1: TButton
      Left = 552
      Top = 64
      Width = 89
      Height = 49
      Caption = 'BARU'
      TabOrder = 7
      OnClick = btn1Click
    end
    object btn2: TButton
      Left = 552
      Top = 120
      Width = 89
      Height = 49
      Caption = 'SIMPAN'
      TabOrder = 8
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 552
      Top = 176
      Width = 89
      Height = 49
      Caption = 'UBAH'
      TabOrder = 9
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 552
      Top = 232
      Width = 89
      Height = 49
      Caption = 'HAPUS'
      TabOrder = 10
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 552
      Top = 288
      Width = 89
      Height = 49
      Caption = 'BATAL'
      TabOrder = 11
    end
    object dtp1: TDateTimePicker
      Left = 200
      Top = 240
      Width = 169
      Height = 27
      Date = 45070.329745243060000000
      Time = 45070.329745243060000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
    end
    object DBGrid1: TDBGrid
      Left = 40
      Top = 352
      Width = 609
      Height = 305
      DataSource = Form8.ds1
      TabOrder = 13
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
    end
  end
end
