unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  //tady si udelas promennou ktera ti bude pocitat kolikrat si najel na tlacitko
  p: Integer;
  pocitadlo:Integer;

implementation

{$R *.dfm}

//tohle je cast kodu ktera zodpovida za to, ze kdyz najedes na tlacitko, tak se neco stane
//udelas ji tak, ze si vlevo v tom panelu pri vybranem tlacitku dvakrat kliknes na OnMouseMove
procedure TForm1.Button1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

//tohle je jeden z moznych zpusobu jak ten priklad udelat, pouzivam case, coz
//je v podstate takovej lepsi IF
//napises CASE pak promennou kterou chces sledovat, v nasem pripade to P, ktery sme udelali driv
// pak OF a na dalsi radek uz pises moznosti co se stanou, kdyz bude mit P urcitou hodnotu
case p of
0: begin
//Tady treba pokud bude P mit hodnotu 0, tak nastavis vzdalenost z levy strany na 375
//Vzdalenost odzhora na 8 a barvu formulare na cervenou. VZDYCKY se pristupuje k ruznym moznostem
//pres tecku, treba TLACITKO.BARVA nebo FORMULAR.JMENO, samozrejme s opravdovymi nazvy
//potom musis jeste pridat k promenne P jednicku abysme se pohli dal
  Button1.Left:=375;
  Button1.Top:=8;
  Form1.Color:=clRed;
  p:=p+1;
  pocitadlo:=pocitadlo+1;
  Label1.Caption:=pocitadlo.ToString();
end;
//tady je P 1, takze Delphi provede kousek kodu ktery sis nastavil aby se udelal v pripade,
//ze ma promenna P hodnotu 1, opet je to to same jako minule
1: begin
  Button1.Top:=193;
  Button1.Left:=375;
  Form1.Color:=clYellow;
  p:=p+1;
  pocitadlo:=pocitadlo+1;
  Label1.Caption:=pocitadlo.ToString();
end;
2: begin
  Button1.Left:=8;
  Button1.Top:=193;
  Form1.Color:=clGreen;
  p:=p+1;
  pocitadlo:=pocitadlo+1;
  Label1.Caption:=pocitadlo.ToString();
end;
//az tady se to trosku meni, tady si musis nastavit hodnotu P na nulu, protoze sme objeli
//cele kolecko a jedeme odznova
3: begin
  Button1.Top:=8;
  Button1.Left:=8;
  Form1.Color:=clBlue;
  p:=0;
  pocitadlo:=pocitadlo+1;
  Label1.Caption:=pocitadlo.ToString();
//a to je asi tak vse. Pokud budes treba chtit pri kazdym posunuti zmenit popisek
//tlacitka, tak napises do kazdyho bloku Button1.Caption:='nejaky popisek'; a bude se to menit
end;
end;
end;

end.
