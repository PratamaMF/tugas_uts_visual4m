object Form8: TForm8
  Left = 444
  Top = 169
  Width = 1054
  Height = 685
  Caption = 'LAT'
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
    Left = 0
    Top = 0
    Width = 977
    Height = 649
    Color = clSkyBlue
    TabOrder = 0
    object btn1: TButton
      Left = 664
      Top = 128
      Width = 153
      Height = 41
      Caption = 'TAMPILKAN GRAFIK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btn1Click
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 176
      Width = 801
      Height = 193
      DataSource = ds1
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object Cht1: TDBChart
      Left = 24
      Top = 376
      Width = 801
      Height = 250
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Text.Strings = (
        'TDBChart')
      TabOrder = 2
      object brsrsSeries1: TBarSeries
        ColorEachPoint = True
        Marks.ArrowLength = 20
        Marks.Style = smsLabelPercent
        Marks.Visible = True
        SeriesColor = clYellow
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Bar'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
    object btn2: TButton
      Left = 432
      Top = 128
      Width = 107
      Height = 41
      Caption = 'LOAD DATA'
      TabOrder = 3
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 552
      Top = 128
      Width = 105
      Height = 41
      Caption = 'PRINT'
      TabOrder = 4
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 264
      Top = 128
      Width = 155
      Height = 41
      Caption = 'TAMBAH DATA BARU'
      TabOrder = 5
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 112
      Top = 32
      Width = 617
      Height = 65
      Caption = 'JADWAL PRAKTIKUM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Vastago Grotesk Bold'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
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
    Left = 40
    Top = 128
  end
  object qry1: TADOQuery
    Active = True
    Connection = Konekdb1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jadwal_tb')
    Left = 80
    Top = 128
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 120
    Top = 128
  end
  object qry2: TADOQuery
    Connection = Konekdb1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jadwal_table')
    Left = 864
    Top = 256
  end
  object frxjadwal: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45053.847164340300000000
    ReportOptions.LastChange = 45055.562975057870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure Memo8OnPreviewClick(Sender: TfrxView; Button: TMouseBu' +
        'tton; Shift: Integer; var Modified: Boolean);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 840
    Top = 368
    Datasets = <
      item
        DataSet = frxdbjadwal
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 41.574830000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo15: TfrxMemoView
          Left = 188.976500000000000000
          Top = 3.779530000000000000
          Width = 351.496290000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'Laporan Jadwal Praktikum Kelas Reguler')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 41.574830000000000000
        Top = 83.149660000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 151.181200000000000000
          Top = 3.779530000000000000
          Width = 173.858380000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Mata Kuliah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 49.133890000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kelas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 325.039580000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 574.488560000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Jumlah Kehadiran')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 449.764070000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 37.795300000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ruang')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Height = 37.795300000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxdbjadwal
        DataSetName = 'frxDBDataset1'
        KeepTogether = True
        RowCount = 0
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 0.000000000000000416
          Width = 37.795300000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'No'
          DataSet = frxdbjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."No"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 151.181200000000000000
          Width = 173.858380000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'matkul'
          DataSet = frxdbjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."matkul"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 49.133890000000000000
          Width = 102.047310000000000000
          Height = 37.795300000000000000
          OnPreviewClick = 'Memo8OnPreviewClick'
          ShowHint = False
          TagStr = '[frxDBDataset1."kelas"]'
          DataSet = frxdbjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."kelas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 325.039580000000000000
          Width = 124.724490000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxdbjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 574.488560000000000000
          Width = 124.724490000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'kehadiran_total'
          DataSet = frxdbjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."kehadiran_total"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 449.764070000000000000
          Width = 124.724490000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'ruang'
          DataSet = frxdbjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."ruang"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 75.590600000000000000
        Top = 245.669450000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          Left = 404.409710000000000000
          Top = 3.779530000000000000
          Width = 170.078850000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxdbjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Semua Kehadiran :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 574.488560000000000000
          Top = 3.779530000000000000
          Width = 124.724490000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataSet = frxdbjadwal
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBDataset1."kehadiran_total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 56.692950000000000000
        Top = 381.732530000000000000
        Width = 718.110700000000000000
        object Memo16: TfrxMemoView
          Left = 619.842920000000000000
          Top = 7.559060000000000000
          Width = 90.708720000000000000
          Height = 34.015770000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxdbjadwal: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = qry1
    BCDToCurrency = False
    Left = 840
    Top = 312
  end
  object frxdbdetailjadwal: TfrxDBDataset
    UserName = 'detail'
    CloseDataSource = False
    DataSet = qry2
    BCDToCurrency = False
    Left = 896
    Top = 312
  end
  object frxdetailjadwal: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45053.847781666700000000
    ReportOptions.LastChange = 45053.927992905100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 896
    Top = 368
    Datasets = <
      item
        DataSet = frxdbdetailjadwal
        DataSetName = 'detail'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 37.795300000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = frxdbdetailjadwal
        DataSetName = 'detail'
        KeepTogether = True
        RowCount = 0
        object Memo11: TfrxMemoView
          Left = 26.456710000000000000
          Width = 41.574830000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'No'
          DataSet = frxdbdetailjadwal
          DataSetName = 'detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[detail."No"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 68.031540000000000000
          Width = 93.114392260000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'kelas'
          DataSet = frxdbdetailjadwal
          DataSetName = 'detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clFuchsia
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[detail."kelas"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 161.145932260000000000
          Width = 104.559637080000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'matkul'
          DataSet = frxdbdetailjadwal
          DataSetName = 'detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[detail."matkul"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 265.448980000000000000
          Width = 69.921305000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'jam_mulai'
          DataSet = frxdbdetailjadwal
          DataSetName = 'detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[detail."jam_mulai"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 336.370285000000000000
          Width = 69.921305000000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'jam_akhir'
          DataSet = frxdbdetailjadwal
          DataSetName = 'detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[detail."jam_akhir"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 406.563983730000000000
          Width = 89.441517080000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxdbdetailjadwal
          DataSetName = 'detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[detail."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 496.354092920000000000
          Width = 89.441517080000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'ruang'
          DataSet = frxdbdetailjadwal
          DataSetName = 'detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[detail."ruang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 586.488560000000000000
          Width = 90.802308920000000000
          Height = 37.795300000000000000
          ShowHint = False
          DataField = 'kehadiran_total'
          DataSet = frxdbdetailjadwal
          DataSetName = 'detail'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[detail."kehadiran_total"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        Height = 45.354360000000000000
        Top = 253.228510000000000000
        Width = 718.110700000000000000
        object Memo21: TfrxMemoView
          Left = 381.732530000000000000
          Top = 3.779530000000000000
          Width = 196.535560000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Rekap Siswa Perkelas :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 589.606680000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 26.456710000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<detail."kehadiran_total">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 37.795300000000000000
        Top = 359.055350000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Left = 589.606680000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[Page#]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Memo1: TfrxMemoView
        Left = 181.417440000000000000
        Top = 7.559060000000000000
        Width = 408.189240000000000000
        Height = 41.574830000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8 = (
          'Laporan Detail Jadwal Praktikum Reguler')
        ParentFont = False
        VAlign = vaCenter
      end
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 75.590600000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 26.456710000000000000
          Top = 11.338590000000000000
          Width = 41.574830000000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 68.031540000000000000
          Top = 11.338590000000000000
          Width = 93.114392260000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kelas')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 161.145932260000000000
          Top = 11.338590000000000000
          Width = 104.559637080000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Matkul')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 265.346630000000000000
          Top = 11.338590000000000000
          Width = 139.842610000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Waktu')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 265.346630000000000000
          Top = 34.015770000000000000
          Width = 69.921305000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Mulai')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 335.267935000000000000
          Top = 34.015770000000000000
          Width = 69.921305000000000000
          Height = 22.677180000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Selesai')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 405.461633730000000000
          Top = 11.338590000000000000
          Width = 89.441517080000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 495.472212920000000000
          Top = 11.338590000000000000
          Width = 89.441517080000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Ruang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 585.606680000000000000
          Top = 11.338590000000000000
          Width = 90.802308920000000000
          Height = 45.354360000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Total Kehadiran')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
