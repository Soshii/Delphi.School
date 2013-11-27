program neznamypocet;

var
	j,i,mmin,mmax,n:Integer;
	ans:Char;

begin

mmax:= -32766;
mmin:= 32766;
ans:='a';

while (ans = 'a') or (ans = 'A') do
begin
	write('Zadejte cislo: ');
	readln(n);
	if (n>mmax) then begin
		mmax:=n;
	end;

	if (n<mmin) then begin
		mmin:=n;
	end;

	write('Chcete pokracovat? Ano = a, Ne = n : ');
	readln(ans);
end;

writeln('------------------------');
write('Nejvetsi cislo je: ', mmax, ' a nejmensi cislo je ', mmin);
readln();

end.
