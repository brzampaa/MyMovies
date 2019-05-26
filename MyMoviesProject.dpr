program MyMoviesProject;

uses
  Vcl.Forms,
  uMain in 'source\uMain.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles,
  uMovie in 'source\uMovie.pas',
  uRating in 'source\uRating.pas',
  uMovieView in 'source\uMovieView.pas' {frmMovieView},
  uSearch in 'source\uSearch.pas' {frmSearch},
  uFavorites in 'source\uFavorites.pas' {frmFavorites};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
