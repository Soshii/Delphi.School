unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
if (Checkbox1.Checked) then
  Label1.Font.Style := Label1.Font.Style + [fsBold]
else if (Checkbox1.Checked = false) then
  Label1.Font.Style := Label1.Font.Style - [fsBold]
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
if (Checkbox2.Checked) then
  Label1.Font.Style := Label1.Font.Style + [fsItalic]
else if (Checkbox2.Checked = false) then
  Label1.Font.Style := Label1.Font.Style - [fsItalic]
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
if (Checkbox3.Checked) then
  Label1.Font.Style := Label1.Font.Style + [fsUnderline]
else if (Checkbox3.Checked = false) then
  Label1.Font.Style := Label1.Font.Style - [fsUnderline]
end;

end.
