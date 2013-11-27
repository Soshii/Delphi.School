program rocnikovaprace;

Uses crt;

type
	zak = record
		name, surname : String;
		sex : Char;
		miss, dborn, mborn, yborn: Integer;
		avggrade: Double;
	end;
	
var
	ngirls, nboys, avgtopmiss, holiborn: Integer;
	students: array[1..10] of zak;

procedure stvalues();
begin
	students[1].name := 'Taeyeon';
	students[1].surname := 'Kim';
	students[1].sex := 'F';
	students[1].miss := 23;
	students[1].avggrade := 1.9;
	students[1].dborn := 9;
	students[1].mborn := 3;
	students[1].yborn := 1989;
	
	students[2].name := 'Danny';
	students[2].surname := 'Worsnop';
	students[2].sex := 'M';
	students[2].miss := 65;
	students[2].avggrade := 3.2;
	students[2].dborn := 11;
	students[2].mborn := 10;
	students[2].yborn := 1990;
	
	students[3].name := 'Stephanie';
	students[3].surname := 'Hwang';
	students[3].sex := 'F';
	students[3].miss := 24;
	students[3].avggrade := 2;
	students[3].dborn := 1;
	students[3].mborn := 8;
	students[3].yborn := 1989;
	
	students[4].name := 'Joohyun';
	students[4].surname := 'Seo';
	students[4].sex := 'F';
	students[4].miss := 68;
	students[4].avggrade := 1.3;
	students[4].dborn := 28;
	students[4].mborn := 6;
	students[4].yborn := 1991;
end;

procedure nboysngirls();

var
	i: Integer;

begin
	ngirls:=0;
	nboys:=0;
	for i:=1 to 4 do begin
		if (students[i].sex = 'M') then begin
			nboys := nboys + 1;
		end
		else begin
			ngirls := ngirls + 1;
		end;
	end;

	writeln('Pocet divek je ', ngirls, ' a pocet chlapcu je ', nboys);
	writeln('------------------');
end;

procedure topavgmiss();

var
	i, j, prumer, topmiss:Integer;

begin
	prumer:=6;
	for i:=1 to 4 do begin
		if (students[i].avggrade < prumer) then begin
			students[i].avggrade:= prumer;
		end;
	end;

	for j:= 1 to 4 do begin
		if (students[i].avggrade = prumer) then begin
			topmiss:=students[i].miss;
		end;	
	end;

	writeln('Absence zaka s nejlepsim prumerem je ', topmiss);
	writeln('------------------');
end;

procedure vyznamenani();

var
	i:Integer;

begin
	writeln('Jmena zaku s vyznamenanim (prumer pod 1.5) : ');
	for i:=1 to 4 do begin
		if (students[i].avggrade < 1.5) then begin
			writeln(students[i].name, ' ', students[i].surname);
		end;
	end;
	writeln('------------------');
end;

procedure prazdniny();

var
	i:Integer;

begin
	writeln('Jmena zaku kteri se narodili o prazdninach: ');
	for i:=1 to 4 do begin
		if (students[i].mborn > 6) and (students[i].mborn < 9) then begin
				writeln(students[i].name, ' ', students[i].surname);
			end;	
	end;
	writeln('------------------');
end;

begin
	stvalues();
	nboysngirls();
	topavgmiss();
	vyznamenani();
	prazdniny();
	readln();
end.