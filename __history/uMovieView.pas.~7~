unit uMovieView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.ExtCtrls, uMovie, Jpeg, idHTTP,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient;

type
  TfrmMovieView = class(TForm)
    imgPoster: TImage;
    txtTitle: TEdit;
    txtYear: TEdit;
    txtRated: TEdit;
    txtReleaseDate: TEdit;
    lblTitle: TLabel;
    lblYear: TLabel;
    lblRated: TLabel;
    lblReleaseDate: TLabel;
    txtRunningTime: TEdit;
    lblRunningTime: TLabel;
    txtGenre: TEdit;
    lblGenre: TLabel;
    txtDirector: TEdit;
    lblDirector: TLabel;
    txtWriter: TEdit;
    lblWriter: TLabel;
    txtActors: TMemo;
    lblActors: TLabel;
    txtSynopsis: TMemo;
    lblSynopsis: TLabel;
    txtLanguage: TEdit;
    lblLanguage: TLabel;
    txtCountry: TEdit;
    lblCountry: TLabel;
    txtAwards: TEdit;
    lblAwards: TLabel;
    txtProduction: TEdit;
    lblProduction: TLabel;
    txtImdbRating: TEdit;
    lblImdbRating: TLabel;
    txtImdbVotes: TEdit;
    lblImdbVotes: TLabel;
    txtDvd: TEdit;
    lblDvd: TLabel;
    lblWebsiteLink: TLabel;
    txtRatings: TMemo;
    lblRatings: TLabel;
    IdHTTP1: TIdHTTP;
    procedure btnSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Fmovie: TMovie;
    { Private declarations }
    procedure showPoster(url:string ; img:TImage);
  public
    procedure Setmovie(const Value: TMovie);
    property movie : TMovie read Fmovie write Setmovie;
  end;

var
  frmMovieView: TfrmMovieView;

implementation

{$R *.dfm}

procedure TfrmMovieView.btnSearchClick(Sender: TObject);
begin
  //Memo1.Text := RESTRequest1.Response.JSONValue.ToString;
end;

procedure TfrmMovieView.FormCreate(Sender: TObject);
begin
  movie := TMovie.Create;
end;

procedure TfrmMovieView.FormShow(Sender: TObject);
begin
  txtTitle.Text := movie.Title;
  showPoster(movie.Poster, imgPoster);
end;

procedure TfrmMovieView.Setmovie(const Value: TMovie);
begin
  Fmovie := Value;
end;

procedure TfrmMovieView.showPoster(url: string ; img:TImage);

var
  Jpeg: TJPEGImage;
  Strm: TMemoryStream;
  //vIdHTTP : TIdHTTP;
  poster : string;
begin
  poster := StringReplace(url,'//','/',[rfReplaceAll]);
  poster := StringReplace(url,'https:/','https://',[rfReplaceAll]);
  //movie.FromJsonString(url);
  Screen.Cursor := crHourGlass;
  Jpeg := TJPEGImage.Create;
  Strm := TMemoryStream.Create;
  IdHTTP1 := TIdHTTP.Create(nil);
  try
    IdHTTP1.Get(movie.Poster, Strm);
    if (Strm.Size > 0) then
    begin
      Strm.Position := 0;
      Jpeg.LoadFromStream(Strm);
      img.Picture.Assign(Jpeg);
    end;
  finally
    Strm.Free;
    Jpeg.Free;
    IdHTTP1.Free;
    Screen.Cursor := crDefault;
  end;
end;

end.
