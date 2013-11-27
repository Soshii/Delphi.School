program vypreparovani;

var
	cif,pom,cislo,poz,i:Integer;

procedure vstup();
begin
	write('Zadejte cislo, ktere chcete vypreparovat: ');
	readln(cislo);
	write('Zadejte pozici cislice kterou chcete vypreparovat (od konce): ');
	readln(poz);
end;

procedure preparace();
begin
	for i:=1 to poz do begin
		pom:=cislo div(10);
		cif:=cislo - 10*pom;
		cislo:=pom;
	end;
end;
	
begin
vstup();
preparace();
write('Vypreparovane cislo je: ', cif);
readln();
end.
