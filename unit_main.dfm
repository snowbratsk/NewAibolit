object form_main: Tform_main
  Left = 87
  Top = 254
  Align = alClient
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1040#1081#1073#1086#1083#1080#1090' - '#1074#1077#1090#1082#1072#1088#1090#1086#1090#1077#1082#1072
  ClientHeight = 768
  ClientWidth = 1212
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gb_cards: TGroupBox
    Left = 225
    Top = 0
    Width = 987
    Height = 768
    Align = alClient
    Caption = #1050#1072#1088#1090#1086#1090#1077#1082#1072
    TabOrder = 1
    object grid_cards: TDBGridEh
      Left = 2
      Top = 265
      Width = 983
      Height = 501
      Align = alClient
      DataSource = ds_cards
      Flat = True
      FooterColor = clWindow
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'MS Sans Serif'
      FooterFont.Style = []
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = grid_cardsCellClick
    end
    object gb_cardtools: TGroupBox
      Left = 2
      Top = 15
      Width = 983
      Height = 250
      Align = alTop
      Caption = #1048#1085#1089#1090#1088#1091#1084#1077#1085#1090#1099
      TabOrder = 1
      object l_fio: TLabel
        Left = 7
        Top = 29
        Width = 30
        Height = 13
        Caption = #1060#1048#1054':'
      end
      object l_klichka: TLabel
        Left = 7
        Top = 52
        Width = 39
        Height = 13
        Caption = #1050#1083#1080#1095#1082#1072':'
      end
      object search_fio: TEdit
        Left = 56
        Top = 24
        Width = 281
        Height = 21
        TabOrder = 0
        OnChange = search_fioChange
      end
      object search_klichka: TEdit
        Left = 56
        Top = 48
        Width = 281
        Height = 21
        TabOrder = 1
        OnChange = search_klichkaChange
      end
      object cb_addsearch: TCheckBox
        Left = 8
        Top = 80
        Width = 193
        Height = 17
        Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1087#1086#1083#1103' '#1087#1086#1080#1089#1082#1072
        TabOrder = 2
        OnClick = cb_addsearchClick
      end
      object gb_addsearch: TGroupBox
        Left = 344
        Top = 16
        Width = 225
        Height = 89
        Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1087#1086#1083#1103' '#1087#1086#1080#1089#1082#1072
        TabOrder = 3
        object l_tel: TLabel
          Left = 10
          Top = 20
          Width = 48
          Height = 13
          Caption = #1058#1077#1083#1077#1092#1086#1085':'
        end
        object l_breed: TLabel
          Left = 11
          Top = 43
          Width = 41
          Height = 13
          Caption = #1055#1086#1088#1086#1076#1072':'
        end
        object l_sex: TLabel
          Left = 11
          Top = 67
          Width = 23
          Height = 13
          Caption = #1055#1086#1083':'
        end
        object search_tel: TEdit
          Left = 64
          Top = 16
          Width = 153
          Height = 21
          TabOrder = 0
          OnChange = search_telChange
        end
        object search_breed: TEdit
          Left = 64
          Top = 40
          Width = 153
          Height = 21
          TabOrder = 1
          OnChange = search_breedChange
        end
        object search_sex: TComboBox
          Left = 64
          Top = 64
          Width = 97
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 2
          OnChange = search_sexChange
          Items.Strings = (
            #1057#1072#1084#1077#1094
            #1057#1072#1084#1082#1072)
        end
      end
      object gb_nowselected: TGroupBox
        Left = 2
        Top = 208
        Width = 979
        Height = 40
        Align = alBottom
        Caption = #1057#1077#1081#1095#1072#1089' '#1074#1099#1073#1088#1072#1085'('#1072'):'
        TabOrder = 4
        object l_nowselected: TLabel
          Left = 2
          Top = 15
          Width = 975
          Height = 23
          Align = alClient
        end
      end
      object b_editdata: TButton
        Left = 8
        Top = 112
        Width = 193
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1072#1085#1085#1099#1077' '#1087#1072#1094#1080#1077#1085#1090#1072
        TabOrder = 5
      end
      object b_lookhistory: TButton
        Left = 344
        Top = 112
        Width = 193
        Height = 25
        Caption = #1048#1089#1090#1086#1088#1080#1103' '#1073#1086#1083#1077#1079#1085#1080
        TabOrder = 6
      end
      object b_lookanaliz: TButton
        Left = 344
        Top = 144
        Width = 193
        Height = 25
        Caption = #1040#1085#1072#1083#1080#1079#1099
        TabOrder = 7
      end
      object b_lookrentgen: TButton
        Left = 344
        Top = 176
        Width = 193
        Height = 25
        Caption = #1056#1077#1085#1090#1075#1077#1085'-'#1086#1087#1080#1089#1072#1085#1080#1103
        TabOrder = 8
      end
      object b_printcard: TButton
        Left = 8
        Top = 144
        Width = 193
        Height = 25
        Caption = #1056#1072#1089#1087#1077#1095#1072#1090#1072#1090#1100' '#1082#1072#1088#1090#1086#1095#1082#1091
        TabOrder = 9
      end
      object b_addtoline: TButton
        Left = 8
        Top = 176
        Width = 193
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1074' '#1086#1095#1077#1088#1077#1076#1100
        TabOrder = 10
      end
      object b_clear: TButton
        Left = 260
        Top = 73
        Width = 75
        Height = 25
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        TabOrder = 11
        OnClick = b_clearClick
      end
    end
  end
  object gb_doctorfilial: TGroupBox
    Left = 225
    Top = 0
    Width = 987
    Height = 768
    Align = alClient
    Caption = #1044#1086#1082#1090#1086#1088#1072' '#1080' '#1092#1080#1083#1080#1072#1083#1099
    TabOrder = 2
    object l_filial_change: TLabel
      Left = 8
      Top = 50
      Width = 44
      Height = 13
      Caption = #1060#1080#1083#1080#1072#1083':'
    end
    object l_priemvedetdoctor_change: TLabel
      Left = 8
      Top = 22
      Width = 107
      Height = 13
      Caption = #1055#1088#1080#1105#1084' '#1074#1077#1076#1105#1090' '#1076#1086#1082#1090#1086#1088':'
    end
    object cb_selectdoctor: TComboBox
      Left = 125
      Top = 21
      Width = 369
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      OnChange = cb_selectdoctorChange
    end
    object cb_selectfilial: TComboBox
      Left = 56
      Top = 47
      Width = 209
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 1
      OnChange = cb_selectfilialChange
    end
  end
  object gb_registration: TGroupBox
    Left = 225
    Top = 0
    Width = 987
    Height = 768
    Align = alClient
    Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1087#1072#1094#1080#1077#1085#1090#1072
    TabOrder = 3
    object gb_owner: TGroupBox
      Left = 2
      Top = 15
      Width = 983
      Height = 122
      Align = alTop
      Caption = #1044#1072#1085#1085#1099#1077' '#1074#1083#1072#1076#1077#1083#1100#1094#1072
      TabOrder = 0
      object l_owner_fio: TLabel
        Left = 12
        Top = 21
        Width = 87
        Height = 13
        Caption = #1060#1048#1054' '#1074#1083#1072#1076#1077#1083#1100#1094#1072':'
      end
      object l_owner_adr: TLabel
        Left = 14
        Top = 43
        Width = 34
        Height = 13
        Caption = #1040#1076#1088#1077#1089':'
      end
      object l_owner_tel: TLabel
        Left = 13
        Top = 66
        Width = 48
        Height = 13
        Caption = #1058#1077#1083#1077#1092#1086#1085':'
      end
      object l_owner_misc: TLabel
        Left = 14
        Top = 89
        Width = 66
        Height = 13
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1103':'
      end
      object ed_owner_fio: TEdit
        Left = 104
        Top = 16
        Width = 385
        Height = 21
        TabOrder = 0
      end
      object ed_owner_adr: TEdit
        Left = 104
        Top = 40
        Width = 385
        Height = 21
        TabOrder = 1
      end
      object ed_owner_tel: TEdit
        Left = 104
        Top = 64
        Width = 185
        Height = 21
        TabOrder = 2
      end
      object ed_owner_misc: TEdit
        Left = 104
        Top = 88
        Width = 385
        Height = 21
        TabOrder = 3
      end
    end
    object gb_pet: TGroupBox
      Left = 2
      Top = 137
      Width = 983
      Height = 200
      Align = alTop
      Caption = #1044#1072#1085#1085#1099#1077' '#1087#1080#1090#1086#1084#1094#1072
      TabOrder = 1
      object l_pet_klichka: TLabel
        Left = 16
        Top = 21
        Width = 85
        Height = 13
        Caption = #1050#1083#1080#1095#1082#1072' '#1087#1080#1090#1086#1084#1094#1072':'
      end
      object l_pet_kind: TLabel
        Left = 16
        Top = 45
        Width = 22
        Height = 13
        Caption = #1042#1080#1076':'
      end
      object l_pet_sex: TLabel
        Left = 16
        Top = 69
        Width = 23
        Height = 13
        Caption = #1055#1086#1083':'
      end
      object l_pet_breed: TLabel
        Left = 16
        Top = 93
        Width = 41
        Height = 13
        Caption = #1055#1086#1088#1086#1076#1072':'
      end
      object l_pet_birth: TLabel
        Left = 16
        Top = 117
        Width = 82
        Height = 13
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103':'
      end
      object l_pet_status: TLabel
        Left = 16
        Top = 141
        Width = 57
        Height = 13
        Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077':'
      end
      object l_pet_chronic: TLabel
        Left = 16
        Top = 165
        Width = 40
        Height = 13
        Caption = #1061#1088#1086#1085#1080#1082':'
      end
      object ed_pet_klichka: TEdit
        Left = 104
        Top = 16
        Width = 385
        Height = 21
        TabOrder = 0
      end
      object ed_pet_breed: TEdit
        Left = 104
        Top = 88
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object cb_pet_kind: TComboBox
        Left = 104
        Top = 40
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 2
      end
      object cb_pet_sex: TComboBox
        Left = 104
        Top = 64
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
      end
      object dt_pet_birth: TDateTimePicker
        Left = 104
        Top = 112
        Width = 121
        Height = 21
        Date = 43668.830032592600000000
        Time = 43668.830032592600000000
        TabOrder = 4
      end
      object cb_pet_status: TComboBox
        Left = 104
        Top = 136
        Width = 145
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 5
      end
      object cb_pet_chronic: TComboBox
        Left = 104
        Top = 160
        Width = 81
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 6
      end
      object ed_pet_kind: TEdit
        Left = 256
        Top = 40
        Width = 233
        Height = 21
        TabOrder = 7
      end
      object b_no_breed: TButton
        Left = 232
        Top = 88
        Width = 89
        Height = 20
        Caption = #1041#1077#1089#1087#1086#1088#1086#1076#1085#1099#1081
        TabOrder = 8
      end
    end
  end
  object gb_mainmenu: TGroupBox
    Left = 0
    Top = 0
    Width = 225
    Height = 768
    Align = alLeft
    Caption = #1047#1072#1076#1072#1095#1080
    TabOrder = 0
    DesignSize = (
      225
      768)
    object l_priemvedetdoctor: TLabel
      Left = 8
      Top = 604
      Width = 107
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = #1055#1088#1080#1105#1084' '#1074#1077#1076#1105#1090' '#1076#1086#1082#1090#1086#1088':'
    end
    object l_filial: TLabel
      Left = 8
      Top = 657
      Width = 44
      Height = 13
      Anchors = [akLeft, akBottom]
      Caption = #1060#1080#1083#1080#1072#1083':'
    end
    object b_cards: TButton
      Left = 8
      Top = 16
      Width = 209
      Height = 25
      Caption = #1050#1072#1088#1090#1086#1090#1077#1082#1072
      TabOrder = 0
      OnClick = b_cardsClick
    end
    object b_changedoctor: TButton
      Left = 8
      Top = 702
      Width = 185
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = #1057#1084#1077#1085#1080#1090#1100
      TabOrder = 1
      OnClick = b_changedoctorClick
    end
    object ed_priemvedet: TEdit
      Left = 8
      Top = 628
      Width = 209
      Height = 21
      Anchors = [akLeft, akBottom]
      Enabled = False
      TabOrder = 2
    end
    object ed_filial: TEdit
      Left = 8
      Top = 676
      Width = 209
      Height = 21
      Anchors = [akLeft, akBottom]
      Enabled = False
      TabOrder = 3
    end
    object b_addpatient: TButton
      Left = 8
      Top = 48
      Width = 209
      Height = 25
      Caption = #1056#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103' '#1087#1072#1094#1080#1077#1085#1090#1072
      TabOrder = 4
      OnClick = b_addpatientClick
    end
  end
  object ZConnection: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    ClientCodepage = 'cp1251'
    Catalog = 'aibolit'
    Properties.Strings = (
      'codepage=cp1251')
    HostName = '87.103.173.109'
    Port = 3306
    Database = 'aibolit'
    User = 'aibolit'
    Password = 'aibolit'
    Protocol = 'mysql-5'
    Left = 8
    Top = 232
  end
  object tab_team: TZTable
    Connection = ZConnection
    TableName = 'aibolit.tab_team'
    Left = 8
    Top = 264
  end
  object DS_team: TDataSource
    DataSet = tab_team
    Left = 40
    Top = 264
  end
  object sql_cards: TZQuery
    Connection = ZConnection
    SQL.Strings = (
      
        'SELECT tab_people.people_id, tab_people.people_fio, tab_people.p' +
        'eople_adress, tab_people.people_tel, tab_pet.pet_id, tab_pet.pet' +
        '_owner, tab_pet.pet_name, tab_pet.pet_kind, tab_pet.pet_breed, t' +
        'ab_pet.pet_sex, tab_pet.pet_status, tab_pet.pet_chronic, tab_peo' +
        'ple.people_misc'
      
        'FROM tab_people INNER JOIN tab_pet ON tab_people.people_id = tab' +
        '_pet.pet_owner;')
    Params = <>
    Left = 8
    Top = 296
  end
  object ds_cards: TDataSource
    DataSet = sql_cards
    Left = 40
    Top = 296
  end
  object tab_people: TZTable
    Connection = ZConnection
    TableName = 'aibolit.tab_people'
    Left = 8
    Top = 328
  end
  object tab_pet: TZTable
    Connection = ZConnection
    TableName = 'aibolit.tab_pet'
    Left = 8
    Top = 360
  end
end
