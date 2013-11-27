program trojuhlenik;

var
	a,b,c:Real;
	druh,ans:Char;

procedure vstup();
begin
	writeln('Nejprve zadejte delky stran, nasledne si vyberete druh trojuhleniku, ktery chcete pocitat.');
	write('Zadejte stranu A: ');
	readln(a);
	write('Zadejte stranu B: ');
	readln(b);
	write('Zadejte stranu C: ');
	readln(c);
end;

procedure obecny();
begin
	if (a+b>c) and (b+c>a) and (c+a>b) then begin
		writeln('Tento obecny trojuhlenik je mozne zkonstruovat.');
	end
	else begin
		writeln('Tento obecny trojuhlenik bohuzel neni mozne zkonstruovat');
	end;
end;
	
procedure pravouhly();
begin
	if (sqr(a)+sqr(b)=sqr(c)) or (sqr(c)-sqr(b)=sqr(a)) or (sqr(c)-sqr(a)=sqr(b)) then begin
		writeln('Tento pravouhly trojuhlenik je mozne zkonstruovat.');
	end
	else begin
		writeln('Tento pravouhly trojuhlenik bohuzel neni mozne zkonstruovat');
	end;
end;


procedure vyber();
begin
	writeln('Ktery druh trojuhleniku chcete pocitat?');
	write('Pravouhly = P, Obecny = O : ');
	readln(druh);
	if (druh = 'P') or (druh = 'p') then begin
		pravouhly();
	end
	else begin
		obecny();
	end;
end;


begin
ans:= 'a';
	repeat
		vstup();
		vyber();
		write('Chcete zadat dalsi trojuhlenik k vyberu? Ano = a, Ne = n: ');
		readln(ans);
	until (ans = 'n');
end.
