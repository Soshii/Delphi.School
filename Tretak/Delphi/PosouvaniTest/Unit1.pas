unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  krok,p:Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin


if Button1.Left = 0 then begin
  if (p > 0) then
    Form1.Color:=clRed;
  krok:=50;
end;

if Button1.Left = 200 then begin
  p:=p+1;
  if p > 1 then
    Form1.Color:=clGreen;
  krok:=-50;
end;


Button1.Left:=Button1.Left+krok;
Button1.Top:=Button1.Top+krok;
end;

end.
