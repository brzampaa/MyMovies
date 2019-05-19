program MyMoviesProject;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {frmMain},
  Vcl.Themes,
  Vcl.Styles,
  uMovie in 'uMovie.pas',
  uRating in 'uRating.pas',
  uMovieView in 'uMovieView.pas' {frmMovieView},
  uSearch in 'uSearch.pas' {frmSearch};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Glow');
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmSearch, frmSearch);
  Application.Run;
end.
