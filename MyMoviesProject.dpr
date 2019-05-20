program MyMoviesProject;

uses
  Vcl.Forms,
  uMain in 'source\uMain.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles,
  uMovie in 'source\uMovie.pas',
  uRating in 'source\uRating.pas',
  uMovieView in 'source\uMovieView.pas' {frmMovieView},
  uSearch in 'source\uSearch.pas' {frmSearch};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSearch, frmSearch);
  Application.Run;
end.
