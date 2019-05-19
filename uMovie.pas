unit uMovie;

interface

uses Generics.Collections, Rest.Json, uRating;

type

TMovie = class
private
  FActors: String;
  FAwards: String;
  FBoxOffice: String;
  FCountry: String;
  FDVD: String;
  FDirector: String;
  FGenre: String;
  FLanguage: String;
  FMetascore: String;
  FPlot: String;
  FPoster: String;
  FProduction: String;
  FRated: String;
  FRatings: TArray<TRating>;
  FReleased: String;
  FResponse: String;
  FRuntime: String;
  FTitle: String;
  FType: String;
  FWebsite: String;
  FWriter: String;
  FYear: String;
  FImdbID: String;
  FImdbRating: String;
  FImdbVotes: String;
public
  property Actors: String read FActors write FActors;
  property Awards: String read FAwards write FAwards;
  property BoxOffice: String read FBoxOffice write FBoxOffice;
  property Country: String read FCountry write FCountry;
  property DVD: String read FDVD write FDVD;
  property Director: String read FDirector write FDirector;
  property Genre: String read FGenre write FGenre;
  property Language: String read FLanguage write FLanguage;
  property Metascore: String read FMetascore write FMetascore;
  property Plot: String read FPlot write FPlot;
  property Poster: String read FPoster write FPoster;
  property Production: String read FProduction write FProduction;
  property Rated: String read FRated write FRated;
  property Ratings: TArray<TRating> read FRatings write FRatings;
  property Released: String read FReleased write FReleased;
  property Response: String read FResponse write FResponse;
  property Runtime: String read FRuntime write FRuntime;
  property Title: String read FTitle write FTitle;
  property &Type: String read FType write FType;
  property Website: String read FWebsite write FWebsite;
  property Writer: String read FWriter write FWriter;
  property Year: String read FYear write FYear;
  property imdbID: String read FImdbID write FImdbID;
  property imdbRating: String read FImdbRating write FImdbRating;
  property imdbVotes: String read FImdbVotes write FImdbVotes;
  destructor Destroy; override;
  function ToJsonString: string;
  class function FromJsonString(AJsonString: string): TMovie;
end;

implementation


destructor TMovie.Destroy;
var
  LRatingsItem: TRating;
begin

 for LRatingsItem in FRatings do
   LRatingsItem.Free;

  inherited;
end;

function TMovie.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

class function TMovie.FromJsonString(AJsonString: string): TMovie;
begin
  result := TJson.JsonToObject<TMovie>(AJsonString)
end;



end.
