object fmMain: TfmMain
  Left = 0
  Top = 0
  Caption = #1058#1077#1083#1077#1092#1086#1085#1085#1099#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082
  ClientHeight = 450
  ClientWidth = 883
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 49
    Width = 883
    Height = 401
    Align = alClient
    DataSource = dsDb
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Fam'
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Name'
        Title.Caption = #1048#1084#1103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tel'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 883
    Height = 49
    Align = alTop
    TabOrder = 1
    ExplicitTop = 8
    object Button1: TButton
      Left = 16
      Top = 13
      Width = 137
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 159
      Top = 13
      Width = 136
      Height = 25
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 301
      Top = 13
      Width = 136
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object dsDb: TDataSource
    DataSet = db
    Left = 64
    Top = 184
  end
  object db: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 24
    Top = 184
    object dbFam: TStringField
      FieldName = 'Fam'
    end
    object dbName: TStringField
      FieldName = 'Name'
    end
    object dbTel: TStringField
      FieldName = 'Tel'
    end
  end
end
