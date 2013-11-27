program znamypocet;

var
	j,i,mmin,mmax,n:Integer;

begin

mmax:= -32766;
mmin:= 32766;

write('Kolik cisel budete zadavat?: ');
readln(j);

for i:=1 to j do begin
	write('Zadejte cislo: ');
	readln(n);
	if (n>mmax) then begin
		mmax:=n;
	end;

	if (n<mmin) then begin
		mmin:=n;
	end;
end;

write('Nejvetsi cislo je: ', mmax, ' a nejmensi cislo je ', mmin);
readln();

end.
