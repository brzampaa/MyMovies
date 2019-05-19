unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TfrmMain = class(TForm)
    btnFind: TSpeedButton;
    btnFav: TSpeedButton;
    imgMainBkg: TImage;
    procedure btnFindClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses uSearch;

procedure TfrmMain.btnFindClick(Sender: TObject);
begin
  frmSearch := TfrmSearch.Create(self);
  frmSearch.ShowModal;
end;

end.
