program evidence;
uses crt;
var i:integer;

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
 writeln('1 - Prida zaka(max. 30)');
 writeln('2 - Zobrazi tridu');
 writeln('3 - Zobrazi pocet kluku a divek ve tride');
 writeln('4 - Zobrazi absenci zaka s nejlepsim prumerem');
 writeln('5 - Zobrazi jmena a prijmeni zaku s vyznamenanim');
 writeln('6 - Zobrazi pocet zaku narozenych o prazdninach');
 writeln('7 - Vymazani celeho pole');
 writeln('8 - Znovu zobraz menu');
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
            writeln('Datum narozeni: ',pole[i].den_narozeni,'.', pole[i].mesic_narozeni,'.', pole[i].rok_narozeni);
            writeln('Pohlavi: ',pole[i].pohlavi);
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




procedure absprum (var pol:Tpole       
                  );
var minznam,minind:integer;                  
begin
minznam:=1000;
  for i:=1 to delka do
  begin
   if(pol[i].prum_znamka<minznam)then
    minind:= i;
     
   
end;
begin 
   write('Absence zaka s nejlepsim prumerem: ', pol[minind].jmeno,' ',pol[minind].prijmeni,': ', pol[minind].absence );
   writeln;
   end;
end; 
 
procedure bg(var krpole:Tpole); 
var g,b:integer;
begin
b:=0;
g:=0;
for i:= 1 to delka do 
  begin
    if(krpole[i].pohlavi = 'muz') then 
      b:=b+1 else if (krpole[i].pohlavi = 'zena')then 
        g:=g+1;  
  end;
write('Ve tride se nachazi ', g, ' devcat a ', b, ' kluku.');
writeln;
end;  


  
procedure vyzn (var krpole:Tpole);

var j,jmen:integer;
vyznam:array[1..30] of Tzaznam;
begin
jmen:=0;
j:=0;

for i:=1 to delka do
  begin
  
    if (krpole[i].prum_znamka < 1.5) then
      begin 
       vyznam[j]:= krpole[i];
       jmen:=jmen+1;
       j:= j+1;
      end;  
  end;
write ('Jmena zaku s vyznamenanim: ');  
for j:= 1 to jmen do
  begin 
    write(vyznam[j].jmeno, ' ', vyznam[j].prijmeni,', ');    
  end;
end;     
     
begin
 repeat
  writeln('vyber si co chces (1-7),0-konec programu, 8-znovu zobrazit menu');
  znak:=readkey;
  case znak of
   '1':pridej(pole);
   '2':vypis(pole);
   '3':bg(pole);
   '4':absprum(pole);
   '5':vyzn(pole);
   '8':begin
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