program kvadratickarovnice;

var
	a,b,c,DIS,x1,x2:Real;
	ans:Char;

procedure vstup();
begin
	writeln('Vzorec kvadraticke rovnice: Ax^2 + Bx + C = 0');
	write('Zadejte A: ');
	readln(a);
	write('Zadejte B: ');
	readln(b);
	write('Zadejte C: ');
	readln(c);
	writeln('-----------');
end;

procedure vypocet();
begin
	if (a = 0) then begin
		writeln('A je rovno nule, rovnice je linearni');
		if (b = 0) and (c <> 0) then begin
			writeln('B je ', b, 'a C je ', c,' , tim padem se C nerovna nule, coz neni pravda a reseni neexistuje.');
			readln();
		end;

		if (b = 0) and (c = 0) then begin
			writeln('B i C se rovnaji nule, rovnice ma nekonecne mnoho reseni. ');
			readln();
		end;

		if (b <> 0) and (c = 0) then begin
			writeln('B je ', b, ' a C je ', c, ', rovnice ma nekonecne mnoho reseni');
			readln();
		end;

		if (b <> 0) and (c <> 0) then begin
			writeln('Reseni teto linearni rovnice je ', (c*-1)/(b));
			readln();
		end;
	end;

	if (a <> 0) then begin
		DIS:= sqr(b)-4*a*c;

		if (DIS < 0) then begin
		 	writeln('Tato kvadraticka rovnice nema reseni v oboru realnych cisel');
		 	readln();
		end;

		if (DIS > 0) then begin
			writeln('Tato kvadraticka rovnice ma dva realne koreny, x1 a x2. ');
		 	x1:= ((b*(-1)) + sqrt(DIS))/(2 * a);
		 	x2:= ((b*(-1)) - sqrt(DIS))/(2 * a);
		 	writeln('x1: ',x1:0:1);
		 	writeln('x2: ',x2:0:1);
		 	readln();
		end; 	

		if (DIS = 0) then begin
			writeln('Tato kvadraticka rovnice ma jeden realny koren, x1. ');
			x1:= (b*(-1))/(2*a);
			writeln('x1: ',x1:0:1);
			readln();
		end;
	end;
end;

begin
	ans:='a';
	while (ans = 'a') or (ans = 'A') do begin
			vstup();
			vypocet();
			write('Chcete pokracovat? Ano = a, Ne = n : ');
			readln(ans);
			writeln('-----------');
	end;
end.