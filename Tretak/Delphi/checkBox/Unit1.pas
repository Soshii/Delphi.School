unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    CheckBox1: TCheckBox;
    Button1: TButton;
    CheckBox2: TCheckBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

if (CheckBox1.Checked = true) AND (CheckBox2.Checked = true) then
  Form1.Color:=clYellow
else if (CheckBox1.Checked = false) AND (CheckBox2.Checked = false) then
  Form1.Color:=clBtnFace
else if (CheckBox2.Checked = true) then
  Form1.Color:=clGreen
else if (CheckBox1.Checked = true) then
  Form1.Color:=clRed

end;

end.
