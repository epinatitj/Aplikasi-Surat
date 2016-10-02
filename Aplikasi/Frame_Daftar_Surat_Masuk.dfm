object Frame2: TFrame2
  Left = 0
  Top = 0
  Width = 740
  Height = 491
  Align = alClient
  TabOrder = 0
  OnClick = FrameClick
  ExplicitWidth = 451
  ExplicitHeight = 305
  object dxLayoutControl1: TdxLayoutControl
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 720
    Height = 471
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 431
    ExplicitHeight = 285
    object SpeedButton2: TSpeedButton
      Left = 46
      Top = 64
      Width = 23
      Height = 22
    end
    object SpeedButton3: TSpeedButton
      Left = 75
      Top = 64
      Width = 23
      Height = 22
    end
    object SpeedButton4: TSpeedButton
      Left = 104
      Top = 64
      Width = 23
      Height = 22
    end
    object cxGrid1: TcxGrid
      AlignWithMargins = True
      Left = 10
      Top = 128
      Width = 855
      Height = 543
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = DataModule1.DataSource_SuratMasuk
        DataController.DetailKeyFieldNames = 'No'
        DataController.KeyFieldNames = 'No'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1No: TcxGridDBColumn
          Caption = 'No Agenda'
          DataBinding.FieldName = 'No'
          Width = 58
        end
        object cxGrid1DBTableView1Tanggal_terima: TcxGridDBColumn
          Caption = 'Tanggal Terima Surat'
          DataBinding.FieldName = 'Tanggal_terima'
          Width = 127
        end
        object cxGrid1DBTableView1No_surat: TcxGridDBColumn
          Caption = 'Nomor Surat'
          DataBinding.FieldName = 'No_surat'
          Width = 83
        end
        object cxGrid1DBTableView1Tanggal_Surat: TcxGridDBColumn
          Caption = 'Tanggal Surat'
          DataBinding.FieldName = 'Tanggal_Surat'
          Width = 95
        end
        object cxGrid1DBTableView1Asal_surat: TcxGridDBColumn
          Caption = 'Asal Surat'
          DataBinding.FieldName = 'Asal_surat'
          Width = 138
        end
        object cxGrid1DBTableView1Perihal_Surat: TcxGridDBColumn
          Caption = 'Perihal Surat'
          DataBinding.FieldName = 'Perihal_Surat'
          Width = 170
        end
        object cxGrid1DBTableView1Berkas: TcxGridDBColumn
          DataBinding.FieldName = 'Berkas'
          Visible = False
        end
        object cxGrid1DBTableView1Tk_Keamanan: TcxGridDBColumn
          Caption = 'Tingkat Keamanan'
          DataBinding.FieldName = 'Tk_Keamanan'
          Width = 98
        end
        object cxGrid1DBTableView1Ket: TcxGridDBColumn
          DataBinding.FieldName = 'Ket'
          Visible = False
        end
        object cxGrid1DBTableView1No_Agenda: TcxGridDBColumn
          DataBinding.FieldName = 'No_Agenda'
          Visible = False
        end
        object cxGrid1DBTableView1Dari: TcxGridDBColumn
          DataBinding.FieldName = 'Dari'
          Visible = False
        end
        object cxGrid1DBTableView1Kepada: TcxGridDBColumn
          DataBinding.FieldName = 'Kepada'
          Visible = False
        end
        object cxGrid1DBTableView1Catatan: TcxGridDBColumn
          DataBinding.FieldName = 'Catatan'
          Visible = False
        end
        object cxGrid1DBTableView1status: TcxGridDBColumn
          DataBinding.FieldName = 'status'
          Visible = False
        end
        object cxGrid1DBTableView1Tgl_Terima: TcxGridDBColumn
          DataBinding.FieldName = 'Tgl_Terima'
          Visible = False
        end
        object cxGrid1DBTableView1Tgl_Baca: TcxGridDBColumn
          DataBinding.FieldName = 'Tgl_Baca'
          Visible = False
        end
        object cxGrid1DBTableView1Tgl_Selesai: TcxGridDBColumn
          DataBinding.FieldName = 'Tgl_Selesai'
          Visible = False
        end
      end
      object cxGrid1DBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = DataModule1.DataSource_SuratMasukDetail
        DataController.DetailKeyFieldNames = 'No_Agenda'
        DataController.KeyFieldNames = 'No_Agenda'
        DataController.MasterKeyFieldNames = 'No'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView2No: TcxGridDBColumn
          DataBinding.FieldName = 'No'
          Visible = False
          Width = 64
        end
        object cxGrid1DBTableView2Tanggal_terima: TcxGridDBColumn
          DataBinding.FieldName = 'Tanggal_terima'
          Visible = False
        end
        object cxGrid1DBTableView2No_surat: TcxGridDBColumn
          DataBinding.FieldName = 'No_surat'
          Visible = False
        end
        object cxGrid1DBTableView2Tanggal_Surat: TcxGridDBColumn
          DataBinding.FieldName = 'Tanggal_Surat'
          Visible = False
        end
        object cxGrid1DBTableView2Asal_surat: TcxGridDBColumn
          DataBinding.FieldName = 'Asal_surat'
          Visible = False
        end
        object cxGrid1DBTableView2Perihal_Surat: TcxGridDBColumn
          DataBinding.FieldName = 'Perihal_Surat'
          Visible = False
        end
        object cxGrid1DBTableView2Berkas: TcxGridDBColumn
          DataBinding.FieldName = 'Berkas'
          Visible = False
        end
        object cxGrid1DBTableView2Tk_Keamanan: TcxGridDBColumn
          DataBinding.FieldName = 'Tk_Keamanan'
          Visible = False
          Width = 64
        end
        object cxGrid1DBTableView2Ket: TcxGridDBColumn
          DataBinding.FieldName = 'Ket'
          Visible = False
        end
        object cxGrid1DBTableView2No_Agenda: TcxGridDBColumn
          Caption = 'No Agenda'
          DataBinding.FieldName = 'No_Agenda'
          Width = 68
        end
        object cxGrid1DBTableView2Dari: TcxGridDBColumn
          DataBinding.FieldName = 'Dari'
          Width = 64
        end
        object cxGrid1DBTableView2Kepada: TcxGridDBColumn
          DataBinding.FieldName = 'Kepada'
          Width = 64
        end
        object cxGrid1DBTableView2status: TcxGridDBColumn
          DataBinding.FieldName = 'status'
          Visible = False
          Width = 64
        end
        object cxGrid1DBTableView2Tgl_Terima: TcxGridDBColumn
          Caption = 'Tanggal Terima'
          DataBinding.FieldName = 'Tgl_Terima'
          Width = 79
        end
        object cxGrid1DBTableView2Tgl_Baca: TcxGridDBColumn
          Caption = 'Tanggal Baca'
          DataBinding.FieldName = 'Tgl_Baca'
          Width = 82
        end
        object cxGrid1DBTableView2Tgl_Selesai: TcxGridDBColumn
          Caption = 'Tanggal Selesai'
          DataBinding.FieldName = 'Tgl_Selesai'
          Width = 80
        end
        object cxGrid1DBTableView2Catatan: TcxGridDBColumn
          DataBinding.FieldName = 'Catatan'
          Width = 265
        end
        object cxGrid1DBTableView2Status_Surat: TcxGridDBColumn
          DataBinding.FieldName = 'Status_Surat'
          Width = 100
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
        object cxGrid1Level2: TcxGridLevel
          GridView = cxGrid1DBTableView2
        end
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      Control = cxGrid1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'SpeedButton2'
      CaptionOptions.Visible = False
      Control = SpeedButton2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'SpeedButton3'
      CaptionOptions.Visible = False
      Control = SpeedButton3
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      AlignHorz = ahLeft
      CaptionOptions.Text = 'SpeedButton4'
      CaptionOptions.Visible = False
      Control = SpeedButton4
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
end
