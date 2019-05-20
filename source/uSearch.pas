unit uSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Json, System.Generics.Collections, uMovie, System.Generics.Defaults;

type
  TfrmSearch = class(TForm)
    txtSearch: TEdit;
    btnSearch: TButton;
    lstMovies: TListBox;
    restClient: TRESTClient;
    restRequest: TRESTRequest;
    procedure btnSearchClick(Sender: TObject);
    procedure lstMoviesDblClick(Sender: TObject);
  private
    { Private declarations }
    procedure findByTitle(title:string);
    procedure findById(id:string);
    var movies : TObjectList<TMovie>;
  public
    { Public declarations }
  end;

var
  frmSearch: TfrmSearch;

implementation

{$R *.dfm}
uses uMovieView;

procedure TfrmSearch.btnSearchClick(Sender: TObject);
begin
  lstMovies.Clear;
  findByTitle(txtSearch.Text);
end;

procedure TfrmSearch.findById(id: string);
var
  m : TMovie;
begin
  restRequest.ResetToDefaults;
  restRequest.AddParameter('i', id);
  restRequest.AddParameter('plot','full');
  //ShowMessage(id);
  restRequest.Execute;
  //ShowMessage(restRequest.Response.JSONValue.ToString);
  m := TMovie.FromJsonString(restRequest.Response.JSONValue.ToString);
  frmMovieView := TfrmMovieView.Create(self);
  frmMovieView.Setmovie(m);
  frmMovieView.ShowModal;
end;

procedure TfrmSearch.findByTitle(title: string);
var
  jObject : TJSONObject;
  jArray : TJSONArray;
  jMovies : TJSONArray;
  Value: TJSONValue;
  m : TMovie;
  Comp : IComparer<TMovie>;
begin
  restRequest.AddParameter('s', title);
  //restRequest.AddParameter('type','episode');
  restRequest.Execute;

  jObject := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(restRequest.Response.JSONValue.ToString), 0) as TJSONObject;
  Value := jObject.Get('Search').JsonValue;
  jArray:= Value as TJSONArray;

  movies :=  TObjectList<TMovie>.Create;
  for Value in jArray do
  begin
    movies.Add(TMovie.FromJsonString(Value.ToString));
  end;
  //movies.Sort;
  Comp := TComparer<TMovie>.Construct(
    function (const L, R : TMovie) : integer
    begin
      result := CompareStr(L.Year, R.Year);
      if result = 0 then
        result := CompareStr(l.Year, R.Year);
    end
  );
  //TObjectList.sort (movies, Comp);
  for m in movies do
  begin
    lstMovies.Items.Add(m.Title + ' | ' + m.Year);
  end;
end;

procedure TfrmSearch.lstMoviesDblClick(Sender: TObject);
var mIndex : integer;
begin
  {mIndex := lstMovies.ItemIndex;
  //ShowMessage(movies[lstMovies.ItemIndex].Year);
  frmMovieView := TfrmMovieView.Create(self);
  frmMovieView.Setmovie(movies[lstMovies.ItemIndex]);

  frmMovieView.ShowModal;

  //frmMovieView.movie := frmMovieView.movie.Create;
  //frmMovieView.movie := movies[lstMovies.ItemIndex];}
  findById(movies[lstMovies.ItemIndex].imdbID);
end;

end.
