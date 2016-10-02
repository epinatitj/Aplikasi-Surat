object Frame4: TFrame4
  Left = 0
  Top = 0
  Width = 584
  Height = 572
  TabOrder = 0
  object dxLayoutControl1: TdxLayoutControl
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 564
    Height = 552
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alClient
    TabOrder = 0
    object sSpeedButton1: TsSpeedButton
      Left = 509
      Top = 313
      Width = 45
      Height = 45
      OnClick = sSpeedButton1Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 16
      Images = DataModule1.cxImageList1
    end
    object sSpeedButton2: TsSpeedButton
      Left = 458
      Top = 313
      Width = 45
      Height = 45
      OnClick = sSpeedButton2Click
      SkinData.SkinSection = 'SPEEDBUTTON'
      ImageIndex = 15
      Images = DataModule1.cxImageList1
    end
    object NIP: TcxTextEdit
      Left = 110
      Top = 28
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      TextHint = 'NIP / Pengguna'
      Width = 203
    end
    object Pass_Pengguna: TcxTextEdit
      Left = 421
      Top = 28
      Properties.EchoMode = eemPassword
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      TextHint = 'Pass Pengguna'
      Width = 121
    end
    object Nama_Lengkap: TcxTextEdit
      Left = 110
      Top = 55
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      TextHint = 'Nama Lengkap'
      Width = 432
    end
    object Atasan: TcxComboBox
      Left = 110
      Top = 82
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 3
      TextHint = 'Atasan Langsung'
      OnMouseDown = AtasanMouseDown
      Width = 432
    end
    object cxCheckBox1: TcxCheckBox
      Left = 22
      Top = 166
      Caption = 'Surat Baru'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 5
      Width = 659
    end
    object cxCheckBox2: TcxCheckBox
      Left = 22
      Top = 193
      Caption = 'Daftra Surat Masuk'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 747
    end
    object cxCheckBox3: TcxCheckBox
      Left = 22
      Top = 220
      Caption = 'Disposisi'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 7
      Width = 595
    end
    object cxCheckBox4: TcxCheckBox
      Left = 22
      Top = 247
      Caption = 'Pengguna Baru'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Width = 619
    end
    object cxCheckBox5: TcxCheckBox
      Left = 22
      Top = 274
      Caption = 'Pengaturan Aplikasi'
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 9
      Width = 731
    end
    object Jabatan: TcxComboBox
      Left = 110
      Top = 109
      Enabled = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      TextHint = 'Jabatan'
      OnMouseDown = JabatanMouseDown
      Width = 432
    end
    object dxLayoutControl1Group_Root1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'NIP / Pengguna'
      Control = NIP
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      Parent = dxLayoutControl1Group1
      CaptionOptions.Text = 'Password Pengguna'
      Control = Pass_Pengguna
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Nama Lengkap'
      Control = Nama_Lengkap
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Group1: TdxLayoutGroup
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Hidden Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item5: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Atasan Langsung'
      Control = Atasan
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Group2: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root1
      AlignHorz = ahClient
      CaptionOptions.Text = 'Data Pengguna'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutControl1Group4: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root1
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item7: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'sSpeedButton1'
      CaptionOptions.Visible = False
      Control = sSpeedButton1
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item8: TdxLayoutItem
      Parent = dxLayoutControl1Group4
      CaptionOptions.Text = 'sSpeedButton2'
      CaptionOptions.Visible = False
      Control = sSpeedButton2
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Group5: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root1
      CaptionOptions.Text = 'Hak Akses'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutControl1Item9: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxCheckBox1'
      CaptionOptions.Visible = False
      Control = cxCheckBox1
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item10: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxCheckBox2'
      CaptionOptions.Visible = False
      Control = cxCheckBox2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item11: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxCheckBox3'
      CaptionOptions.Visible = False
      Control = cxCheckBox3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item12: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxCheckBox4'
      CaptionOptions.Visible = False
      Control = cxCheckBox4
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutControl1Item13: TdxLayoutItem
      Parent = dxLayoutControl1Group5
      CaptionOptions.Text = 'cxCheckBox5'
      CaptionOptions.Visible = False
      Control = cxCheckBox5
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutControl1Item15: TdxLayoutItem
      Parent = dxLayoutControl1Group2
      CaptionOptions.Text = 'Jabatan'
      Control = Jabatan
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
  end
  object cxImageCollection1: TcxImageCollection
    Left = 234
    Top = 410
  end
end
