program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {principal},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 Dark');
  Application.CreateForm(Tprincipal, principal);
  Application.Run;
end.
