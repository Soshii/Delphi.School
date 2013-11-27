unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  //udelame si promennou krok, ktera bude odpovidat za to, jak moc a kam se bude
  //posouvat tlacitko
  krok:Integer;

implementation

{$R *.dfm}

//vsechny zalezitosti delame v metode Button1Click, ktera se aktivuje, kdyz se na
//tlacitko klikne
procedure TForm1.Button1Click(Sender: TObject);
begin

//pokud je tlacitko vic nez 200 bodu vlevo, tak ho musime vratit zpatky, takze
//nastavime krok do minusu aby se vracelo
if (Button1.Left >= 200) then begin
  krok:=-20;
//no a pokud uz zajde moc daleko, to jest je od leve strany deset nebo mene bodu
//tak ho musime poslat zase napravo
end else if (Button1.Left <= 10) then
  krok:=20;

//a tady uz delame samotnou akci posouvani, akorat pricteme k leve a horni
//strane tlacitka promennou krok, kterou si predtim spravne nastavime
Button1.Left:=Button1.Left+krok;
Button1.Top:=Button1.Top+krok;

end;

end.
