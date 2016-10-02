object Frame5: TFrame5
  Left = 0
  Top = 0
  Width = 637
  Height = 410
  TabOrder = 0
  object dxLayoutControl1: TdxLayoutControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 631
    Height = 404
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 16
    ExplicitWidth = 300
    ExplicitHeight = 250
    object FileSetting: TcxTextEdit
      Left = 102
      Top = 10
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 0
      Text = 'FileSetting'
      Width = 121
    end
    object cxTextEdit2: TcxTextEdit
      Left = 102
      Top = 37
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Text = 'cxTextEdit2'
      Width = 121
    end
    object cxTextEdit3: TcxTextEdit
      Left = 102
      Top = 64
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Text = 'cxTextEdit3'
      Width = 121
    end
    object Button1: TButton
      Left = 10
      Top = 91
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 3
      OnClick = Button1Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahLeft
      AlignVert = avTop
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutControl1Item1: TdxLayoutItem
      CaptionOptions.Text = 'File Setting'
      Parent = dxLayoutControl1Group_Root
      Control = FileSetting
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutControl1Item2: TdxLayoutItem
      CaptionOptions.Text = 'Folder File Berkas'
      Parent = dxLayoutControl1Group_Root
      Control = cxTextEdit2
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutControl1Item3: TdxLayoutItem
      CaptionOptions.Text = 'Folder File Lapoan'
      Parent = dxLayoutControl1Group_Root
      Control = cxTextEdit3
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutControl1Item4: TdxLayoutItem
      CaptionOptions.Text = 'Button1'
      CaptionOptions.Visible = False
      Parent = dxLayoutControl1Group_Root
      Control = Button1
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
end
