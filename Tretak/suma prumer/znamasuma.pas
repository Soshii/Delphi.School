program znamasuma;

var
	c,s,i,p,j:Integer;
	
begin

s:=0;
p:=0;

write('Kolik cisel budete zadavat?: ');
readln(j);

for i:=1 to j do begin
	write('Zadejte cislo: ');
	readln(c);
	s:=s+c;
	p:=p+1;
end;

writeln('------------');
writeln('Suma je ', s);
writeln('Prumer je ', s/p:0:2);
writeln('Stisknete Enter pro ukonceni programu.');
readln();

end.

