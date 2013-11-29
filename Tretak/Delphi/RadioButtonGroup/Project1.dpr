program Project1;

uses
  Forms,
  Unit1 in '..\..\..\..\..\..\..\Desktop\29.11\RadioGroup\Unit1.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'RadioButton';
  TStyleManager.TrySetStyle('Metropolis UI Blue');
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
