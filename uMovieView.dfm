object frmMovieView: TfrmMovieView
  Left = 0
  Top = 0
  BorderWidth = 1
  Caption = 'My Movies | Find movies'
  ClientHeight = 579
  ClientWidth = 768
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object imgPoster: TImage
    Left = 406
    Top = 6
    Width = 357
    Height = 532
    Proportional = True
    Stretch = True
  end
  object lblTitle: TLabel
    Left = 156
    Top = 6
    Width = 20
    Height = 13
    Caption = 'Title'
  end
  object lblYear: TLabel
    Left = 347
    Top = 6
    Width = 22
    Height = 13
    Caption = 'Year'
  end
  object lblRated: TLabel
    Left = 258
    Top = 56
    Width = 29
    Height = 13
    Caption = 'Rated'
  end
  object lblReleaseDate: TLabel
    Left = 16
    Top = 109
    Width = 64
    Height = 13
    Caption = 'Release Date'
  end
  object lblRunningTime: TLabel
    Left = 316
    Top = 56
    Width = 64
    Height = 13
    Caption = 'Running Time'
  end
  object lblGenre: TLabel
    Left = 106
    Top = 56
    Width = 29
    Height = 13
    Caption = 'Genre'
  end
  object lblDirector: TLabel
    Left = 165
    Top = 157
    Width = 38
    Height = 13
    Caption = 'Director'
  end
  object lblWriter: TLabel
    Left = 309
    Top = 157
    Width = 30
    Height = 13
    Caption = 'Writer'
  end
  object lblActors: TLabel
    Left = 184
    Top = 203
    Width = 31
    Height = 13
    Caption = 'Actors'
  end
  object lblSynopsis: TLabel
    Left = 177
    Top = 272
    Width = 42
    Height = 13
    Caption = 'Synopsis'
  end
  object lblLanguage: TLabel
    Left = 275
    Top = 109
    Width = 47
    Height = 13
    Caption = 'Language'
  end
  object lblCountry: TLabel
    Left = 42
    Top = 157
    Width = 39
    Height = 13
    Caption = 'Country'
  end
  object lblAwards: TLabel
    Left = 180
    Top = 352
    Width = 36
    Height = 13
    Caption = 'Awards'
  end
  object lblProduction: TLabel
    Left = 174
    Top = 398
    Width = 51
    Height = 13
    Caption = 'Production'
  end
  object lblImdbRating: TLabel
    Left = 9
    Top = 455
    Width = 59
    Height = 13
    Caption = 'IMDb Rating'
  end
  object lblImdbVotes: TLabel
    Left = 194
    Top = 455
    Width = 55
    Height = 13
    Caption = 'IMDb Votes'
  end
  object lblDvd: TLabel
    Left = 107
    Top = 109
    Width = 87
    Height = 13
    Caption = 'DVD Release Date'
  end
  object lblRatings: TLabel
    Left = 180
    Top = 483
    Width = 36
    Height = 13
    Caption = 'Ratings'
  end
  object txtTitle: TEdit
    Left = 9
    Top = 25
    Width = 314
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 0
  end
  object txtYear: TEdit
    Left = 329
    Top = 25
    Width = 60
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 1
  end
  object txtRated: TEdit
    Left = 239
    Top = 75
    Width = 66
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 2
  end
  object txtReleaseDate: TEdit
    Left = 8
    Top = 128
    Width = 81
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 3
  end
  object txtRunningTime: TEdit
    Left = 311
    Top = 75
    Width = 78
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 4
  end
  object txtGenre: TEdit
    Left = 8
    Top = 75
    Width = 225
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 5
  end
  object txtDirector: TEdit
    Left = 120
    Top = 176
    Width = 129
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 6
  end
  object txtWriter: TEdit
    Left = 260
    Top = 176
    Width = 129
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 7
  end
  object txtActors: TMemo
    Left = 9
    Top = 222
    Width = 380
    Height = 44
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 8
  end
  object txtSynopsis: TMemo
    Left = 8
    Top = 291
    Width = 381
    Height = 55
    Alignment = taCenter
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 9
  end
  object txtLanguage: TEdit
    Left = 210
    Top = 128
    Width = 179
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 10
  end
  object txtCountry: TEdit
    Left = 9
    Top = 176
    Width = 105
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 11
  end
  object txtAwards: TEdit
    Left = 8
    Top = 371
    Width = 381
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 12
  end
  object txtProduction: TEdit
    Left = 9
    Top = 417
    Width = 380
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 13
  end
  object txtImdbRating: TEdit
    Left = 74
    Top = 452
    Width = 105
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 14
  end
  object txtImdbVotes: TEdit
    Left = 255
    Top = 452
    Width = 134
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 15
  end
  object txtDvd: TEdit
    Left = 110
    Top = 128
    Width = 81
    Height = 21
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 16
  end
  object txtRatings: TMemo
    Left = 8
    Top = 502
    Width = 381
    Height = 55
    Alignment = taCenter
    ReadOnly = True
    TabOrder = 17
  end
  object lnkWebsite: TLinkLabel
    Left = 563
    Top = 544
    Width = 43
    Height = 17
    Caption = 'Website'
    TabOrder = 18
    OnClick = lnkWebsiteClick
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 720
    Top = 480
  end
end
