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
  p,max: Integer;
  pole: Array[1..100] of Integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

p:=p+1;
pole[p]:=StrToInt(Edit1.Text);

//OPIS
for i := 1 to p do
  Label10.Caption:=Label10.Caption + pole[p];


end;

end.
