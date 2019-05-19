unit uSearch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope, Json;

type
  TfrmSearch = class(TForm)
    txtSearch: TEdit;
    btnSearch: TButton;
    ListBox1: TListBox;
    cbxSearch: TComboBox;
    restClient: TRESTClient;
    restRequest: TRESTRequest;
    Memo1: TMemo;
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSearch: TfrmSearch;

implementation

{$R *.dfm}
uses uMovie;

procedure TfrmSearch.btnSearchClick(Sender: TObject);
  var
  jObject : TJSONObject;
  jArray : TJSONArray;
  jMovies : TJSONArray;
  Value: TJSONValue;
  movies : TArray<TMovie>;
begin
  restRequest.AddParameter('s', txtSearch.Text);
  restRequest.Execute;
  jObject := TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(restRequest.Response.JSONValue.ToString), 0) as TJSONObject;
  //Memo1.Text := restRequest.Response.JSONValue.ToString;
  Value := jObject.Get('Search').JsonValue;
  //:= jv as TJSONArray;
  jArray:= Value as TJSONArray;
  //TJSONArray(restRequest.Response.JSONValue);
  //Value := jArray.GetValue('Search');
  for Value in jArray do
  begin
    movies.
  end;

  //jMovies:= TJSONArray(Value);
  //ShowMessage(jArray.Items[0].ToString);
  //Value := jMovies.Get(0);
  //ShowMessage(Value.ToString);
end;

end.
