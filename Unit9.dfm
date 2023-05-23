object Form9: TForm9
  Left = 629
  Top = 95
  Width = 615
  Height = 744
  Caption = 'TAMBAH DATA JADWAL'
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
    Left = 0
    Top = 0
    Width = 585
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
    object Edtkelas: TEdit
      Left = 200
      Top = 80
      Width = 329
      Height = 21
      TabOrder = 0
    end
    object Edtmatkul: TEdit
      Left = 200
      Top = 112
      Width = 329
      Height = 21
      TabOrder = 1
    end
    object Edtjmulai: TEdit
      Left = 200
      Top = 144
      Width = 329
      Height = 21
      TabOrder = 2
    end
    object Edtjakhir: TEdit
      Left = 200
      Top = 176
      Width = 329
      Height = 21
      TabOrder = 3
    end
    object Cbbhari: TComboBox
      Left = 200
      Top = 208
      Width = 169
      Height = 21
      ItemHeight = 13
      TabOrder = 4
    end
    object Cbbtanggal: TComboBox
      Left = 200
      Top = 240
      Width = 169
      Height = 21
      ItemHeight = 13
      TabOrder = 5
    end
    object Edtruangan: TEdit
      Left = 200
      Top = 272
      Width = 329
      Height = 21
      TabOrder = 6
    end
    object Edthadir: TEdit
      Left = 200
      Top = 304
      Width = 329
      Height = 21
      TabOrder = 7
    end
    object btn1: TButton
      Left = 56
      Top = 352
      Width = 89
      Height = 49
      Caption = 'BARU'
      TabOrder = 8
    end
    object btn2: TButton
      Left = 152
      Top = 352
      Width = 89
      Height = 49
      Caption = 'SIMPAN'
      TabOrder = 9
    end
    object btn3: TButton
      Left = 248
      Top = 352
      Width = 89
      Height = 49
      Caption = 'UBAH'
      TabOrder = 10
    end
    object btn4: TButton
      Left = 344
      Top = 352
      Width = 89
      Height = 49
      Caption = 'HAPUS'
      TabOrder = 11
    end
    object btn5: TButton
      Left = 440
      Top = 352
      Width = 89
      Height = 49
      Caption = 'BATAL'
      TabOrder = 12
    end
    object DBGrid1: TDBGrid
      Left = 56
      Top = 424
      Width = 473
      Height = 185
      DataSource = ds1
      TabOrder = 13
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'no'
          Width = 30
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jam_mulai'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'jam_akhir'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hari'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tanggal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ruang'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'matkul'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kelas'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kehadiran_total'
          Visible = True
        end>
    end
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 600
    Top = 288
  end
  object Konekdb1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=jadwa' +
      'l_db.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OL' +
      'EDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Data' +
      'base Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lock' +
      'ing Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global ' +
      'Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB' +
      ':Create System Database=False;Jet OLEDB:Encrypt Database=False;J' +
      'et OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Wi' +
      'thout Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 600
    Top = 176
  end
  object qry1: TADOQuery
    Active = True
    Connection = Konekdb1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jadwal_tb')
    Left = 600
    Top = 232
  end
end
