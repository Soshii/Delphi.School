program evidence;
uses crt;


type Tzaznam = record
  jmeno : string[20];
  prijmeni : string[20];
  den_narozeni : integer;
  mesic_narozeni : integer;
  rok_narozeni : integer;
  pohlavi : string[20];
  absence : integer;
  prum_znamka : real;
end; 
  

      Tpole=array[1..30] of Tzaznam;

Var  delka:integer;

procedure vlozhodn(var h:Tzaznam);

begin
with h do 
   begin
    write('Zadej jmeno: ');
    readln(jmeno);
    write('Zadej prijmeni: ');
    readln(prijmeni);
    write('Zadej den narozeni(cislo bez tecky): ');
    readln(den_narozeni);
    write('Zadej cislo mesice narozeni(cislo bez tecky): ');
    readln(mesic_narozeni);
    write('Zadej rok narozeni: ');
    readln(rok_narozeni);
    write('Jsi muz nebo zena? ');
    readln(pohlavi);
    write('Zadej pocet hodin tve absence: ');
    readln(absence);
    write('Zadej prumernou znamku: ');
    readln(prum_znamka);
   end;
end;

procedure pridej(var pole:Tpole);
var hodnota:Tzaznam;
begin
  if delka>=30 then exit;
  vlozhodn(hodnota);
  delka:=delka+1;
  pole[delka]:=hodnota;
  writeln('Hodnota uspesne pridana');
end;


var hodnota:Tzaznam;

procedure vypismenu;
var znak:char;
begin
 writeln('1 - Prida zaka');
 writeln('2 - Zobrazi pocet kluku a divek ve tride');
 writeln('3 - Zobrazi absenci zaka s nejlepsim prumerem');
 writeln('4 - Zobrazi jmena a prijmeni zaku s vyznamenanim');
 writeln('5 - Zobrazi pocet zaku narozenych o prazdninach');
 writeln('6 - Vymazani celeho pole');
 writeln('7 - Znovu zobraz menu');
 writeln('0 - Konec programu');
end;

Procedure vypis(pole:Tpole);
var i:integer;
begin
 if delka=0 then writeln('Pole je prazdne');
 if delka=0 then exit;
 for i:=1 to delka do
          begin
            write('**************************************************************');
            writeln;
            writeln('Jmeno a prijmeni zaka: ',pole[i].jmeno, ' ', pole[i].prijmeni);
            writeln('Datum narození: ',pole[i].den_narozeni,'.', pole[i].mesic_narozeni,'.', pole[i].rok_narozeni);
            writeln('Pohlaví ',pole[i].pohlavi);
            writeln('Absence: ',pole[i].absence);
            writeln('Prumer zaka: ',pole[i].prum_znamka:8:2);
            writeln;
            
          end;

 writeln;
end;

procedure vymazpole(var pole:Tpole);
begin
 writeln('Achtung! Cele pole bude smazano! - potvrd stiskem A');
 if upcase(readkey)='A' then begin
 delka:=0;
 writeln('Cele pole bylo vymazano!!!');
 end;
end;

procedure menu;
var znak:char;
    pole:Tpole;

var i,minhodn, minind:integer;


procedure absprum (var pol:Tpole);
begin
  for i:=1 to delka do
  begin
     if(pol[i].prum_znamka < minhodn)then 
      minind:=i;
     end;
      end;
     
    begin 
   write('Absence zaka s nejlepsim prumerem: ', pol[minind].jmeno,' ',pol[minind].prijmeni,': ', pol[minind].absence );
   end;
     
begin
 repeat
  writeln('vyber si co chces (0-7)');
  znak:=readkey;
  case znak of
   '1':pridej(pole);
   '2':vypis(pole);
   '3':vymazpole(pole);
   '4':begin
            clrscr;
            vypismenu;
       end;
   end;
 until znak='0';
end;

begin
 delka:=0;
 clrscr;
 vypismenu;
 menu
end.