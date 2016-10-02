object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 984
  Height = 516
  TabOrder = 0
  object dxLayoutControl1: TdxLayoutControl
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 964
    Height = 496
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    TabOrder = 0
    ShowDesignSelectors = False
    HighlightRoot = False
    object sSpeedButton3: TsSpeedButton
      Left = 22
      Top = 421
      Width = 45
      Height = 45
      Hint = 'Pindai / Scan Berkas'
      Enabled = False
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 22
      Images = DataModule1.cxImageList1
    end
    object sSpeedButton4: TsSpeedButton
      Left = 73
      Top = 421
      Width = 50
      Height = 45
      Hint = 'Ambil File Yang sudah Ada'
      OnClick = sSpeedButton4Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 6
      Images = DataModule1.cxImageList1
    end
    object sSpeedButton5: TsSpeedButton
      Left = 556
      Top = 121
      Width = 33
      Height = 32
      OnClick = sSpeedButton5Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 19
      Images = DataModule1.cxImageList1
      DrawOverBorder = False
    end
    object sSpeedButton2: TsSpeedButton
      Left = 485
      Top = 340
      Width = 45
      Height = 45
      Hint = 'Batal'
      OnClick = sSpeedButton2Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 18
      Images = DataModule1.cxImageList1
    end
    object sSpeedButton1: TsSpeedButton
      Left = 434
      Top = 340
      Width = 45
      Height = 45
      Hint = 'Simpan'
      OnClick = sSpeedButton1Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 15
      Images = DataModule1.cxImageList1
    end
    object sSpeedButton6: TsSpeedButton
      Left = 383
      Top = 340
      Width = 45
      Height = 45
      Hint = 'Batal'
      Enabled = False
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 0
      Images = DataModule1.cxImageList1
    end
    object edit_NoAgenda: TcxTextEdit
      Left = 449
      Top = 121
      Properties.ReadOnly = True
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 101
    end
    object edit_NoSurat: TcxTextEdit
      Left = 449
      Top = 191
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 4
      Width = 165
    end
    object edit_TglMasuk: TcxDateEdit
      Left = 671
      Top = 121
      Properties.DateButtons = [btnToday]
      Properties.DateOnError = deToday
      Properties.ReadOnly = False
      Properties.OnChange = edit_TglMasukPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      Width = 121
    end
    object AcroPDF1: TAcroPDF
      Left = 22
      Top = 28
      Width = 331
      Height = 387
      TabOrder = 0
      ControlData = {000A000036220000FF270000}
    end
    object edit_AsalSurat: TcxTextEdit
      Left = 449
      Top = 218
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 476
    end
    object cxRadioGroup1: TcxRadioGroup
      Left = 371
      Top = 28
      Caption = 'Tingkat Keamanan Surat'
      Properties.Items = <>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      TabOrder = 1
      Height = 69
      Width = 566
      object tk1: TcxRadioButton
        Left = 16
        Top = 31
        Width = 41
        Height = 17
        Caption = 'SR'
        TabOrder = 0
      end
      object tk2: TcxRadioButton
        Left = 77
        Top = 32
        Width = 28
        Height = 17
        Caption = 'R'
        TabOrder = 1
      end
      object tk3: TcxRadioButton
        Left = 128
        Top = 32
        Width = 33
        Height = 17
        Caption = 'B'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object edit_TglSurat: TcxDateEdit
      Left = 692
      Top = 191
      Properties.DateButtons = [btnToday]
      Properties.OnChange = edit_TglSuratPropertiesChange
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 5
      Width = 121
    end
    object Memo_PerihalSurat: TcxMemo
      Left = 449
      Top = 245
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Height = 89
      Width = 476
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      AlignHorz = ahClient
      CaptionOptions.Text = 'Data Surat Masuk'
      ButtonOptions.Buttons = <>
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutControl1Group3: TdxLayoutGroup
      Parent = dxLayoutControl1Group8
      CaptionOptions.Text = 'Informasi Surat'
      ButtonOptions.Alignment = gbaLeft
      ButtonOptions.Buttons = <>
      ButtonOptions.ShowExpandButton = True
      ItemControlAreaAlignment = catAuto
      Index = 2
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'No Agenda'
      Control = edit_NoAgenda
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Nomor Surat'
      Control = edit_NoSurat
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Tanggal Masuk'
      Control = edit_TglMasuk
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group6: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group8: TdxLayoutGroup
      Parent = dxLayoutControl1Group13
      AlignVert = avClient
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group6
      Control = AcroPDF1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item6: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'sSpeedButton3'
      CaptionOptions.Visible = False
      Visible = False
      Control = sSpeedButton3
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group10
      CaptionOptions.Text = 'sSpeedButton4'
      CaptionOptions.Visible = False
      Control = sSpeedButton4
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group10: TdxLayoutGroup
      Parent = dxLayoutControl1Group6
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Asal Surat'
      Control = edit_AsalSurat
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group8
      AlignHorz = ahClient
      CaptionOptions.Text = 'cxRadioGroup1'
      CaptionOptions.Visible = False
      Control = cxRadioGroup1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Tanggal Surat'
      Control = edit_TglSurat
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Perihal Surat'
      Control = Memo_PerihalSurat
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group13: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem
      Parent = dxLayoutControl1Group13
      CaptionOptions.Text = 'Separator'
      SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
      SizeOptions.SizableHorz = False
      SizeOptions.SizableVert = False
      Index = 0
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'sSpeedButton5'
      CaptionOptions.Visible = False
      Control = sSpeedButton5
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group12: TdxLayoutGroup
      Parent = dxLayoutControl1Group3
      CaptionOptions.Text = 'Hidden Group'
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = sSpeedButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'sSpeedButton2'
      CaptionOptions.Visible = False
      Control = sSpeedButton2
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group4: TdxLayoutAutoCreatedGroup
      Index = -1
      AutoCreated = True
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group12
      CaptionOptions.Text = 'sSpeedButton1'
      CaptionOptions.Visible = False
      Visible = False
      Control = sSpeedButton6
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 150
    Top = 443
  end
end
