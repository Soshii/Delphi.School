program delitelnost;

var
	cislo,delitel:Longint;
	
begin

write('Zadejte cislo ktere chcete delit: ');
readln(cislo);
write('Zadejte cislo kterym chcete delit: ');
readln(delitel);

if (cislo mod(delitel) <> 0) then begin
	writeln('Cislo ', cislo, ' neni cislem ', delitel, ' celocislne delitelne.');
end
else begin
	writeln('Cislo ', cislo, ' je cislem ', delitel, ' celocislne delitelne.');
end;

if (cislo mod(2) = 0) then begin
	writeln('Cislo ', cislo, ' je sude.');
end
else begin
	writeln('Cisl o', cislo, ' je liche.');
end;
 
readln();

end.
