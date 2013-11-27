program studenti;

type 
	student = record
	cestina: Integer;
	matika: Integer;
	jmeno, prijmeni: String;
	end;

var
	zaci: array[1..5] of student;
	i:Integer;

begin

for i:=1 to 5 do begin
	write('Zadej jmeno studenta cislo ', i, ': ');
	readln(zaci[i].jmeno);
	write('Zadej prijmeni studenta cislo ', i, ': ');
	readln(zaci[i].prijmeni);
	write('Zadej znamku z cestiny studenta cislo ', i, ': ');
	readln(zaci[i].cestina);
	write('Zadej znamku z matiky studenta cislo ', i, ': ');
	readln(zaci[i].matika);
end;

for i:=5 downto 1 do begin
	writeln('Jmeno studenta cislo ', i, ': ', zaci[i].jmeno);
	writeln('Prijmeni studenta cislo ', i, ': ', zaci[i].prijmeni);
	writeln('Znamka z cestiny studenta ', i, ': ', zaci[i].cestina);
	writeln('Znamka z matiky studenta ', i, ': ', zaci[i].matika);
end;

readln();

end.
