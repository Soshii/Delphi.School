program tricisla;

var
	a,b,c,p:Integer;
	ans:Char;

procedure vstup();
begin
	write('Zadejte prvni cislo: ');
	readln(a);
	write('Zadejte druhe cislo: ');
	readln(b);
	write('Zadejte treti cislo: ');
	readln(c);
	writeln('-----------');
end;

procedure porovnani();
begin
	if (a > b) then begin
		p:= a;
		a:= b;
		b:= p;
	end;

	if (a > c) then begin
		p:= a;
		a:= c;
		c:= p;
	end;

	if (c > b) then begin
		p:= c;
		c:= b;
		b:= p;
	end;
end;

procedure vypis();
begin
	write('Cisla serazena podle velikosti od nejmensiho po nejvetsi: ',a,', ',c,', ',b);
	readln();
end;

begin
	ans:='a';
	while (ans = 'a') or (ans = 'A') do
	begin
		vstup();
		porovnani();
		vypis();
		write('Chcete zadat cisla jeste jednou? Ano = a, Ne = n : ');
		readln(ans);
		writeln('-----------');
	end;
end.