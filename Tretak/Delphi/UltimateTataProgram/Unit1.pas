unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  p,max,suma: Integer;
  pole: Array[1..100] of Integer;
  prumer: Real;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i:Integer;
begin

Label8.Caption:='';
p:=p+1;
pole[p]:=StrToInt(Edit1.Text);

//OPIS
Label10.Caption:=Label10.Caption + IntToStr(pole[p]) + ' ';

//PRUMER
suma:= suma + pole[p];
Label2.Caption:=FloatToStr(suma/p);

//MAXIMUM A JEHO POZICE
if pole[p] > max then begin
  max:=pole[p];
  Label4.Caption:=IntToStr(pole[p]);
  Label6.Caption:=IntToStr(p);
end;

//POZPATKU
for i := p downto 1 do
  Label8.Caption:=Label8.Caption + ' ' + IntToStr(pole[i]);

end;

end.
