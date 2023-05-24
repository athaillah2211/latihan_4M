object Form1: TForm1
  Left = 252
  Top = 119
  Width = 1007
  Height = 545
  Caption = 'Form1'
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
  object dbgrd1: TDBGrid
    Left = 16
    Top = 80
    Width = 872
    Height = 120
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'No'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jam_mulai'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'jam_akhir'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hari'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal'
        Width = 68
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ruang'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'matkul'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kelas'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'kehadiran_total'
        Width = 35
        Visible = True
      end>
  end
  object cht1: TChart
    Left = 16
    Top = 208
    Width = 873
    Height = 250
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Title.Text.Strings = (
      '')
    TabOrder = 1
    object Series1: TBarSeries
      ColorEachPoint = True
      Marks.ArrowLength = 20
      Marks.Visible = True
      SeriesColor = clRed
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
  object Button1: TButton
    Left = 808
    Top = 32
    Width = 75
    Height = 25
    Caption = 'VIEW GRAPH'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 592
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Load Data'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 704
    Top = 32
    Width = 75
    Height = 25
    Caption = 'View Report'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 480
    Top = 32
    Width = 75
    Height = 25
    Caption = 'Add Data'
    TabOrder = 5
    OnClick = Button4Click
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=C:\Pr' +
      'ogram Files (x86)\Borland\Delphi7\Projects\Delphi 3-4\database\j' +
      'adwal_db.mdb;Mode=Share Deny None;Persist Security Info=False;Je' +
      't OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:' +
      'Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database ' +
      'Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Glo' +
      'bal Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet O' +
      'LEDB:Create System Database=False;Jet OLEDB:Encrypt Database=Fal' +
      'se;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compac' +
      't Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 56
    Top = 24
  end
  object qry1: TADOQuery
    Active = True
    Connection = con1
    CursorType = ctStatic
    Filter = 'qry1'
    Parameters = <>
    SQL.Strings = (
      'select * from jadwal_table')
    Left = 112
    Top = 24
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 168
    Top = 24
  end
  object qry2: TADOQuery
    Connection = con1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from jadwal_table')
    Left = 224
    Top = 24
  end
  object frxDBjadwal: TfrxDBDataset
    UserName = 'frxDBjadwal'
    CloseDataSource = False
    DataSet = qry1
    BCDToCurrency = False
    Left = 928
    Top = 88
  end
  object frxjadwal: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45061.943865428200000000
    ReportOptions.LastChange = 45061.996867962960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnClickObject = frxjadwalClickObject
    Left = 928
    Top = 152
    Datasets = <
      item
        DataSet = frxDBjadwal
        DataSetName = 'frxDBjadwal'
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
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 26.456710000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        DataSet = frxDBjadwal
        DataSetName = 'frxDBjadwal'
        RowCount = 14
        object Memo6: TfrxMemoView
          Left = 52.913420000000000000
          Width = 47.170878290000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 103.863828290000000000
          Width = 174.532249690000000000
          Height = 18.897650000000000000
          ShowHint = False
          TagStr = '[frxDBjadwal."kelas"]'
          DataField = 'kelas'
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBjadwal."kelas"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 282.175607980000000000
          Width = 160.380986200000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'matkul'
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBjadwal."matkul"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 571.060614190000000000
          Width = 108.493020080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kehadiran_total'
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBjadwal."kehadiran_total"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 445.222774260000000000
          Width = 121.706725740000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBjadwal."tanggal"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 52.913420000000000000
          Width = 47.170878290000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 103.863828290000000000
          Width = 174.532249690000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'nama kelas')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 282.175607980000000000
          Width = 160.380986200000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Mata kuliah')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 571.060614190000000000
          Width = 108.493020080000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kehadiran')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 445.222774260000000000
          Width = 121.706725740000000000
          Height = 18.897650000000000000
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
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 234.330860000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Left = 571.822379930000000000
          Width = 108.493020080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBjadwal."kehadiran_total">,MasterData1)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 400.630180000000000000
          Width = 167.061085740000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBjadwal
          DataSetName = 'frxDBjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TOTAL KEHADIRAN')
          ParentFont = False
        end
      end
      object Memo11: TfrxMemoView
        Left = 219.212740000000000000
        Top = 15.118120000000000000
        Width = 272.126160000000000000
        Height = 37.795300000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8 = (
          'LAPORAN DATA PRAKTIKUM SEMESTER'
          'GANJIL 2019')
        ParentFont = False
      end
    end
  end
  object frxdetailjadwal: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45061.943865428200000000
    ReportOptions.LastChange = 45061.988787812500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 928
    Top = 288
    Datasets = <
      item
        DataSet = frxDBdetailjadwal
        DataSetName = 'frxDBdetailjadwal'
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
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 30.236240000000000000
        Top = 219.212740000000000000
        Width = 718.110700000000000000
        DataSet = frxDBdetailjadwal
        DataSetName = 'frxDBdetailjadwal'
        RowCount = 14
        object Memo6: TfrxMemoView
          Left = 11.338590000000000000
          Top = 3.779530000000000000
          Width = 47.170878290000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 62.288998290000000000
          Top = 3.779530000000000000
          Width = 174.532249690000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kelas'
          DataSet = frxDBdetailjadwal
          DataSetName = 'frxDBdetailjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdetailjadwal."kelas"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 240.600777980000000000
          Top = 3.779530000000000000
          Width = 122.585686200000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'matkul'
          DataSet = frxDBdetailjadwal
          DataSetName = 'frxDBdetailjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdetailjadwal."matkul"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 605.076384190000000000
          Top = 3.779530000000000000
          Width = 108.493020080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'kehadiran_total'
          DataSet = frxDBdetailjadwal
          DataSetName = 'frxDBdetailjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdetailjadwal."kehadiran_total"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 479.238544260000000000
          Top = 3.779530000000000000
          Width = 121.706725740000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tanggal'
          DataSet = frxDBdetailjadwal
          DataSetName = 'frxDBdetailjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdetailjadwal."tanggal"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 366.614410000000000000
          Top = 3.779530000000000000
          Width = 53.675185740000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jam_mulai'
          DataSet = frxDBdetailjadwal
          DataSetName = 'frxDBdetailjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdetailjadwal."jam_mulai"]')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 423.307360000000000000
          Top = 3.779530000000000000
          Width = 53.675185740000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jam_akhir'
          DataSet = frxDBdetailjadwal
          DataSetName = 'frxDBdetailjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBdetailjadwal."jam_akhir"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 56.692950000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 11.338590000000000000
          Width = 47.170878290000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'No.')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 62.288998290000000000
          Width = 174.532249690000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'nama kelas')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 240.600777980000000000
          Width = 122.585686200000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Mata kuliah')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 605.076384190000000000
          Width = 108.493020080000000000
          Height = 41.574830000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Kehadiran')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 479.238544260000000000
          Width = 121.706725740000000000
          Height = 41.574830000000000000
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
        end
        object Memo12: TfrxMemoView
          Left = 366.614410000000000000
          Width = 110.368135740000000000
          Height = 18.897650000000000000
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
        end
        object Memo16: TfrxMemoView
          Left = 366.614410000000000000
          Top = 22.677180000000000000
          Width = 53.675185740000000000
          Height = 18.897650000000000000
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
        end
        object Memo17: TfrxMemoView
          Left = 423.307360000000000000
          Top = 22.677180000000000000
          Width = 53.675185740000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            'Akhir')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 272.126160000000000000
        Width = 718.110700000000000000
        object Memo14: TfrxMemoView
          Left = 571.822379930000000000
          Width = 108.493020080000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBdetailjadwal
          DataSetName = 'frxDBdetailjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[SUM(<frxDBdetailjadwal."kehadiran_total">,MasterData1)]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 400.630180000000000000
          Width = 167.061085740000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataSet = frxDBdetailjadwal
          DataSetName = 'frxDBdetailjadwal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            'TOTAL KEHADIRAN')
          ParentFont = False
        end
      end
      object Memo11: TfrxMemoView
        Left = 219.212740000000000000
        Top = 15.118120000000000000
        Width = 272.126160000000000000
        Height = 52.913420000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        HAlign = haCenter
        Memo.UTF8 = (
          'LAPORAN DETAIL DATA JADWAL PRAKTIKUM SEMESTER'
          'GANJIL 2019')
        ParentFont = False
      end
    end
  end
  object frxDBdetailjadwal: TfrxDBDataset
    UserName = 'frxDBdetailjadwal'
    CloseDataSource = False
    DataSet = qry2
    BCDToCurrency = False
    Left = 928
    Top = 224
  end
end
