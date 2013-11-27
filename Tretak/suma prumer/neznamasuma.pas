program znamasuma;

var
	c,s,i,p,j:Integer;
	ans:Char;

begin

s:=0;
p:=0;
ans:='a';

while (ans = 'a') or (ans = 'A') do
begin
	write('Zadejte cislo: ');
	readln(c);
	s:=s+c;
	p:=p+1;

	write('Chcete pokracovat? Ano = a, Ne = n : ');
	readln(ans);
end;

writeln('------------');
writeln('Suma je ', s);
writeln('Prumer je ', s/p:0:2);
writeln('Stisknete Enter pro ukonceni programu.');
readln();

end.

