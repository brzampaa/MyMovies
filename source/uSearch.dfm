object frmSearch: TfrmSearch
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  BorderWidth = 10
  Caption = 'MyMovies | Find movies'
  ClientHeight = 257
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    472
    257)
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_hint: TLabel
    Left = 0
    Top = 6
    Width = 179
    Height = 13
    Caption = 'Enter the movie title and click search:'
  end
  object txtSearch: TEdit
    Left = 0
    Top = 25
    Width = 385
    Height = 25
    TabOrder = 0
    OnKeyUp = txtSearchKeyUp
  end
  object btnSearch: TButton
    Left = 389
    Top = 22
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Anchors = []
    Caption = 'Search'
    TabOrder = 1
    OnClick = btnSearchClick
  end
  object lstMovies: TListBox
    Left = 0
    Top = 56
    Width = 472
    Height = 201
    Align = alBottom
    ItemHeight = 13
    TabOrder = 2
    OnDblClick = lstMoviesDblClick
  end
  object restClient: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://www.omdbapi.com/?apikey=497de05c'
    Params = <>
    Left = 351
    Top = 203
  end
  object restRequest: TRESTRequest
    Client = restClient
    Params = <>
    SynchronizedEvents = False
    Left = 415
    Top = 203
  end
end
