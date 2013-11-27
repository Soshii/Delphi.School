program ahoj;

var
	tata,a,b:Integer;
	
procedure secti(a,b);
begin
	tata:=a+b;
	return tata;
end;

begin
	write('Zadej prvni cislo pro secteni: ');
	readln(a);
	write('Zadej druhe cislo pro secteni: ');
	readln(b);
	secti(a,b);
	write('Vysledek je: ', tata);
	readln();
end.