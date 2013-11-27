program radek;

var
	rad,r,s,ra,sl:Integer;
	matice: array[1..10, 1..10] of Integer;

procedure zadejmatici();
begin

write('Zadej pocet radku v matici (max 10): ');
readln(ra);

write('Zadej pocet sloupcu v matici (max 10): ');
readln(sl);

	for r:=1 to ra do begin
		for s:=1 to sl do begin
			write('Zadej prvek na pozici ', r,':', s, ': ');
			readln(matice[r,s]);
		end;
	end;
	readln();
end;

procedure vypismatici();
begin
	for r:=1 to ra do begin
		for s:=1 to sl do begin
			write(matice[r,s]:2);
		end;
		readln();
	end;
	readln();
end;

procedure pracuj();
begin
	for r:=1 to ra do begin
		for s:=1 to sl do begin
			rad:= rad+matice[r,s];
		end;
		readln();
		write('Hodnota radku ', r,' je ', rad);
		rad:=0;
	end;
	readln();
end;

begin
zadejmatici();
vypismatici();
pracuj();
writeln('Pro ukonceni programu zmacknete enter');
readln();
end.
