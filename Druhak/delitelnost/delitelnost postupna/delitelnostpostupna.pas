program postupnadelitelnost;

var
	cislo,delitel:Longint;
	ans:Char;
	
begin
ans:='a';

while (ans = 'a') do
begin
	write('Zadejte cislo k deleni: ');
	readln(cislo);
	write('Zadejte delitel: ');
	readln(delitel);

	if (cislo mod(delitel) <> 0) then begin
		writeln('Cislo ', cislo, ' neni cislem ', delitel, ' celociselne delitelne.');
	end
	else begin
		writeln('Cislo ', cislo, ' je cislem ', delitel, ' celociselne delitelne.');
	end;

	if (cislo mod(2) = 0) then begin
		writeln('Cislo ', cislo, ' je sude.');
	end
	else begin
		writeln('Cislo ', cislo, ' je liche.');
	end;

	write('Chcete zadat dalsi cislo? Ano = a, Ne = n: ');
	readln(ans);

end;


end.
