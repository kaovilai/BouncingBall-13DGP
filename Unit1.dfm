object Form1: TForm1
  Left = 272
  Top = 139
  Width = 990
  Height = 747
  Hint = 'dsfdsfsdf'
  HelpType = htKeyword
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object panel_game: TPanel
    Left = 8
    Top = 0
    Width = 601
    Height = 450
    TabOrder = 1
    Visible = False
    object ball: TShape
      Left = 248
      Top = 176
      Width = 41
      Height = 41
      Brush.Color = clYellow
      Shape = stCircle
    end
    object Bat: TShape
      Left = 8
      Top = 136
      Width = 9
      Height = 125
      Brush.Color = clInfoText
    end
    object ScoreNum: TLabel
      Left = 48
      Top = 8
      Width = 6
      Height = 13
      Caption = '0'
      Color = clAppWorkSpace
      ParentColor = False
    end
    object SuccessNum: TLabel
      Left = 80
      Top = 8
      Width = 12
      Height = 13
      Caption = '  0'
      Color = clMedGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object FailedNum: TLabel
      Left = 104
      Top = 8
      Width = 12
      Height = 13
      Caption = '  0'
      Color = clMedGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object Score: TStaticText
      Left = 16
      Top = 8
      Width = 32
      Height = 17
      Caption = 'Score'
      TabOrder = 0
    end
  end
  object losepanel: TPanel
    Left = 144
    Top = 176
    Width = 265
    Height = 49
    TabOrder = 2
    object Label1: TLabel
      Left = 112
      Top = 168
      Width = 3
      Height = 13
    end
    object lose: TLabel
      Left = 80
      Top = 8
      Width = 106
      Height = 32
      Caption = 'You lose'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
  end
  object HighScore: TListBox
    Left = 696
    Top = 96
    Width = 129
    Height = 185
    ItemHeight = 13
    TabOrder = 3
    OnClick = HighScoreClick
  end
  object panel_start: TPanel
    Left = 168
    Top = 104
    Width = 257
    Height = 209
    TabOrder = 0
    object Name: TLabeledEdit
      Left = 32
      Top = 40
      Width = 185
      Height = 40
      Hint = 'Type your name here'
      HelpType = htKeyword
      HelpKeyword = 'T'
      EditLabel.Width = 58
      EditLabel.Height = 31
      EditLabel.Hint = 'Type'
      EditLabel.Caption = 'Name'
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -27
      EditLabel.Font.Name = 'Arial Narrow'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Myriad Pro Cond'
      Font.Style = []
      ImeName = 'fsaasd'
      ParentFont = False
      TabOrder = 0
    end
    object Start: TBitBtn
      Left = 8
      Top = 88
      Width = 241
      Height = 113
      Hint = 'Type your name here'
      Caption = 'Start'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -67
      Font.Name = 'Myriad Pro Cond'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = StartClick
    end
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 616
    Top = 320
  end
end
