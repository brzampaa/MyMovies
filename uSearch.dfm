object frmSearch: TfrmSearch
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'frmSearch'
  ClientHeight = 277
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object txtSearch: TEdit
    Left = 8
    Top = 8
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object btnSearch: TButton
    Left = 406
    Top = 6
    Width = 75
    Height = 25
    Caption = 'Search'
    TabOrder = 1
    OnClick = btnSearchClick
  end
  object ListBox1: TListBox
    Left = 8
    Top = 42
    Width = 473
    Height = 226
    ItemHeight = 13
    TabOrder = 2
  end
  object cbxSearch: TComboBox
    Left = 255
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object Memo1: TMemo
    Left = 48
    Top = 42
    Width = 185
    Height = 135
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
  object restClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://www.omdbapi.com/?apikey=497de05c'
    Params = <>
    Left = 351
    Top = 219
  end
  object restRequest: TRESTRequest
    Client = restClient
    Params = <>
    SynchronizedEvents = False
    Left = 423
    Top = 219
  end
end
