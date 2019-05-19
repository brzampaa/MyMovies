unit uMovieView;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmMovieView = class(TForm)
    imgPoster: TImage;
    txtName: TEdit;
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
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovieView: TfrmMovieView;

implementation

{$R *.dfm}

procedure TfrmMovieView.btnSearchClick(Sender: TObject);
begin
  //Memo1.Text := RESTRequest1.Response.JSONValue.ToString;
end;

end.
