object Frame3: TFrame3
  Left = 0
  Top = 0
  Width = 830
  Height = 594
  TabOrder = 0
  OnClick = FrameClick
  object sSpeedButton5: TsSpeedButton
    Left = 408
    Top = 288
    Width = 23
    Height = 22
    SkinData.SkinSection = 'SPEEDBUTTON'
  end
  object dxLayoutControl1: TdxLayoutControl
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 810
    Height = 574
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    TabOrder = 0
    ShowDesignSelectors = False
    HighlightRoot = False
    object sSpeedButton3: TsSpeedButton
      Left = 10000
      Top = 10000
      Width = 45
      Height = 45
      Visible = False
      OnClick = sSpeedButton3Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 3
      Images = DataModule1.cxImageList2
    end
    object sSpeedButton2: TsSpeedButton
      Left = 10000
      Top = 10000
      Width = 45
      Height = 45
      Visible = False
      OnClick = sSpeedButton2Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 15
      Images = DataModule1.cxImageList1
    end
    object sSpeedButton1: TsSpeedButton
      Left = 10000
      Top = 10000
      Width = 45
      Height = 45
      Visible = False
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 16
      Images = DataModule1.cxImageList1
    end
    object sSpeedButton4: TsSpeedButton
      Left = 10000
      Top = 10000
      Width = 745
      Height = 57
      Visible = False
      OnClick = sSpeedButton4Click
      Alignment = taLeftJustify
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 14
      Images = DataModule1.cxImageList1
    end
    object edit_NoAgenda: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Visible = False
      Width = 118
    end
    object edit_NoSurat: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Visible = False
      Width = 286
    end
    object edit_TglMasuk: TcxDateEdit
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Visible = False
      Width = 121
    end
    object AcroPDF1: TAcroPDF
      Left = 24
      Top = 44
      Width = 762
      Height = 501
      TabOrder = 11
      ControlData = {000A0000C14E0000C8330000}
    end
    object edit_AsalSurat: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Visible = False
      Width = 721
    end
    object edit_TglSurat: TcxDateEdit
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Visible = False
      Width = 121
    end
    object Memo_PerihalSurat: TcxMemo
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Visible = False
      Height = 43
      Width = 721
    end
    object edit_tkSurat: TcxTextEdit
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Visible = False
      Width = 118
    end
    object Memo_Diteruskan: TcxMemo
      Left = 10000
      Top = 10000
      Properties.ReadOnly = True
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Visible = False
      Height = 354
      Width = 721
    end
    object cxGrid1: TcxGrid
      AlignWithMargins = True
      Left = 10000
      Top = 10000
      Width = 745
      Height = 330
      TabOrder = 0
      Visible = False
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        OnCellClick = cxGrid1DBTableView1CellClick
        DataController.DataSource = DataModule1.DataSource_SuratMasuk
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        object cxGrid1DBTableView1No: TcxGridDBColumn
          Caption = 'No Agenda'
          DataBinding.FieldName = 'No'
          Width = 70
        end
        object cxGrid1DBTableView1Tanggal_terima: TcxGridDBColumn
          Caption = 'Tanggal Surat Diterima'
          DataBinding.FieldName = 'Tanggal_terima'
          Visible = False
          GroupIndex = 0
        end
        object cxGrid1DBTableView1No_surat: TcxGridDBColumn
          Caption = 'Nomor Surat'
          DataBinding.FieldName = 'No_surat'
          Width = 160
        end
        object cxGrid1DBTableView1Tanggal_Surat: TcxGridDBColumn
          Caption = 'Tanggal Surat'
          DataBinding.FieldName = 'Tanggal_Surat'
          Width = 104
        end
        object cxGrid1DBTableView1Asal_surat: TcxGridDBColumn
          Caption = 'Asal Surat'
          DataBinding.FieldName = 'Asal_surat'
          Width = 190
        end
        object cxGrid1DBTableView1Perihal_Surat: TcxGridDBColumn
          Caption = 'Perihal Surat'
          DataBinding.FieldName = 'Perihal_Surat'
          Width = 176
        end
        object cxGrid1DBTableView1Berkas: TcxGridDBColumn
          DataBinding.FieldName = 'Berkas'
          Visible = False
        end
        object cxGrid1DBTableView1Tk_Keamanan: TcxGridDBColumn
          Caption = 'Tingkat Keamanan'
          DataBinding.FieldName = 'Tk_Keamanan'
          Width = 87
        end
        object cxGrid1DBTableView1Ket: TcxGridDBColumn
          Caption = 'Penerima Surat'
          DataBinding.FieldName = 'Ket'
          Width = 215
        end
        object cxGrid1DBTableView1FILES: TcxGridDBColumn
          DataBinding.FieldName = 'FILES'
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
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object Edit_terimadari: TcxTextEdit
      Left = 10000
      Top = 10000
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 12
      Text = 'Edit_terimadari'
      Visible = False
      Width = 696
    end
    object Disposisi_Memo: TcxMemo
      Left = 10000
      Top = 10000
      Properties.ScrollBars = ssVertical
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 10
      Visible = False
      Height = 97
      Width = 721
    end
    object diteruskan_list: TcxCheckListBox
      Left = 10000
      Top = 10000
      Width = 721
      Height = 111
      Items = <>
      TabOrder = 9
      Visible = False
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Data Surat Masuk'
      ButtonOptions.Alignment = gbaLeft
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Informasi Surat'
      ButtonOptions.Alignment = gbaLeft
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Expanded = False
      Index = 1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'No Agenda'
      CaptionOptions.Layout = clTop
      Control = edit_NoAgenda
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Nomor Surat'
      CaptionOptions.Layout = clTop
      Control = edit_NoSurat
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Tanggal Masuk'
      CaptionOptions.Layout = clTop
      Control = edit_TglMasuk
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      AlignHorz = ahClient
      CaptionOptions.Text = 'Lampiran'
      ButtonOptions.Alignment = gbaLeft
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      OnCaptionClick = dxLayoutControl1Group6CaptionClick
      Index = 2
    end
    object dxLayoutControl1Group7: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ItemIndex = 2
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Perincian Surat'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      OnCaptionClick = dxLayoutControl1Group8CaptionClick
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      Control = AcroPDF1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Asal Surat'
      CaptionOptions.Layout = clTop
      Control = edit_AsalSurat
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'Tanggal Surat'
      CaptionOptions.Layout = clTop
      Control = edit_TglSurat
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Perihal Surat'
      CaptionOptions.Layout = clTop
      Control = Memo_PerihalSurat
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'Tingkat Keamanan Surat'
      CaptionOptions.Layout = clTop
      Control = edit_tkSurat
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Disposisi'
      Visible = False
      ButtonOptions.Buttons = <>
      Index = 3
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Disposisi / Instruksi'
      CaptionOptions.Layout = clTop
      Control = Memo_Diteruskan
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group7
      CaptionOptions.Text = 'Daftar Surat'
      ButtonOptions.Buttons = <>
      OnCaptionClick = dxLayoutControl1Group10CaptionClick
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      Control = cxGrid1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Terima Dari'
      Visible = False
      Control = Edit_terimadari
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item14: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      AlignHorz = ahRight
      CaptionOptions.Text = 'sSpeedButton3'
      CaptionOptions.Visible = False
      Control = sSpeedButton3
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group9: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group9
      CaptionOptions.Text = 'Teruskan'
      ButtonOptions.Alignment = gbaLeft
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Disposisi / Intruksi :'
      CaptionOptions.Layout = clTop
      Control = Disposisi_Memo
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'Kepada :'
      CaptionOptions.Layout = clTop
      Control = diteruskan_list
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'sSpeedButton2'
      CaptionOptions.Visible = False
      Control = sSpeedButton2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'sSpeedButton1'
      CaptionOptions.Visible = False
      Control = sSpeedButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group9
      AlignHorz = ahLeft
      CaptionOptions.Text = 'sSpeedButton4'
      CaptionOptions.Visible = False
      Control = sSpeedButton4
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 374
    Top = 3
  end
end
