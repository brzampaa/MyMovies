unit uMovieView;

interface

uses
  Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.ExtCtrls, uMovie, Jpeg, idHTTP,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, ShellAPI;

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
    txtRatings: TMemo;
    lblRatings: TLabel;
    IdHTTP1: TIdHTTP;
    lnkWebsite: TLinkLabel;
    procedure btnSearchClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lnkWebsiteClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
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

uses uRating;

procedure TfrmMovieView.btnSearchClick(Sender: TObject);
begin
  //Memo1.Text := RESTRequest1.Response.JSONValue.ToString;
end;

procedure TfrmMovieView.FormActivate(Sender: TObject);
begin
  ActiveControl:= nil;
end;

procedure TfrmMovieView.FormCreate(Sender: TObject);
begin
  movie := TMovie.Create;
end;

procedure TfrmMovieView.FormShow(Sender: TObject);
var
  r : TRating;
begin
  txtTitle.Text := movie.Title;
  txtYear.Text := movie.Year;
  txtGenre.Text := movie.Genre;
  txtRated.Text := movie.Rated;
  txtRunningTime.Text := movie.Runtime;
  txtReleaseDate.Text := movie.Released;
  txtDvd.Text := movie.DVD;
  txtLanguage.Text := movie.Language;
  txtCountry.Text := movie.Country;
  txtDirector.Text := movie.Director;
  txtWriter.Text := movie.Writer;
  txtActors.Text := movie.Actors;
  txtSynopsis.Text := movie.Plot;
  txtAwards.Text := movie.Awards;
  txtProduction.Text := movie.Production;
  txtImdbRating.Text := movie.imdbRating;
  txtImdbVotes.Text := movie.imdbVotes;
  for r in movie.Ratings do
  begin
    txtRatings.Lines.Add(r.Source + ': ' + r.Value);
  end;

  if (movie.Website <> 'N/A') AND (movie.Website <> '') then
  begin
    lnkWebsite.Caption := '<a href=" '+ movie.Website +'">Website</a>';
  end
  else
  begin
    lnkWebsite.Enabled := false;
    lnkWebsite.Visible := false;
  end;
  showPoster(movie.Poster, imgPoster);
end;

procedure TfrmMovieView.lnkWebsiteClick(Sender: TObject);
begin
  ShellExecute(0, nil, PChar(movie.Website), nil, nil, 1);
end;

procedure TfrmMovieView.Setmovie(const Value: TMovie);
begin
  Fmovie := Value;
end;

procedure TfrmMovieView.showPoster(url: string ; img:TImage);

var
  Jpeg: TJPEGImage;
  Strm: TMemoryStream;
  poster : string;
begin
  poster := StringReplace(url,'//','/',[rfReplaceAll]);
  poster := StringReplace(url,'https:/','https://',[rfReplaceAll]);
  Screen.Cursor := crHourGlass;
  Jpeg := TJPEGImage.Create;
  Strm := TMemoryStream.Create;
  IdHTTP1 := TIdHTTP.Create(nil);
  try
    try
      IdHTTP1.Get(movie.Poster, Strm);
      if (Strm.Size > 0) then
      begin
        Strm.Position := 0;
        Jpeg.LoadFromStream(Strm);
        img.Picture.Assign(Jpeg);
      end;
    except
      on E : Exception do
      imgPoster.Picture.LoadFromFile(GetCurrentDir + '\icons\no-poster.jpg');
    end;
  finally
    Strm.Free;
    Jpeg.Free;
    IdHTTP1.Free;
    Screen.Cursor := crDefault;
  end;
  
  ActiveControl:= nil;
end;

end.
