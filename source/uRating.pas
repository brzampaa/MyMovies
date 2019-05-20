unit uRating;

interface

uses Rest.Json;

type

TRating = class
private
  FSource: String;
  FValue: String;
public
  property Source: String read FSource write FSource;
  property Value: String read FValue write FValue;
  function ToJsonString: string;
  class function FromJsonString(AJsonString: string): TRating;
end;

implementation

function TRating.ToJsonString: string;
begin
  result := TJson.ObjectToJsonString(self);
end;

class function TRating.FromJsonString(AJsonString: string): TRating;
begin
  result := TJson.JsonToObject<TRating>(AJsonString)
end;

end.
