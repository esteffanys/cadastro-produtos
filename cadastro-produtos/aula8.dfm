object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 407
  ClientWidth = 918
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 918
    Height = 258
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 16
      Width = 31
      Height = 13
      Caption = 'codigo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 40
      Top = 66
      Width = 63
      Height = 13
      Caption = 'Nome Cliente'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 182
      Top = 16
      Width = 28
      Height = 13
      Caption = 'E-mail'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 40
      Top = 112
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 240
      Top = 112
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit5
    end
    object DBEdit1: TDBEdit
      Left = 40
      Top = 35
      Width = 97
      Height = 21
      DataField = 'codcliente'
      DataSource = DataSource1
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 40
      Top = 85
      Width = 409
      Height = 21
      DataField = 'nome'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 182
      Top = 35
      Width = 267
      Height = 21
      DataField = 'email'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 40
      Top = 131
      Width = 177
      Height = 21
      DataField = 'telefone'
      DataSource = DataSource1
      MaxLength = 15
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 240
      Top = 131
      Width = 209
      Height = 21
      DataField = 'cidade'
      DataSource = DataSource1
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 264
    Width = 918
    Height = 143
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 0
    Top = 239
    Width = 918
    Height = 25
    DataSource = DataSource1
    Align = alBottom
    TabOrder = 2
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\20211148060020\Downloads\libmysql\libmysql.dll'
    Left = 856
    Top = 64
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=rad.m'
      'User_Name=root'
      'DriverID=mySQL')
    Connected = True
    LoginPrompt = False
    Left = 856
    Top = 8
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from clientes')
    Left = 856
    Top = 184
    object FDQuery1codcliente: TFDAutoIncField
      DisplayLabel = 'codigo'
      FieldName = 'codcliente'
      Origin = 'codcliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQuery1nome: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object FDQuery1email: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      Origin = 'email'
      Required = True
      Size = 50
    end
    object FDQuery1telefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      EditMask = '(99) 99999-9999;1;_'
      Size = 50
    end
    object FDQuery1cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 856
    Top = 120
  end
end
