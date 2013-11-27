program Rocnikovaprace;

var
	platy: array[1..100] of Longint;
	i,j, pplatu: Integer;
	prumer: Extended;


procedure vstup;
var
	i: Integer;
begin
	write('Kolik platu budete zadavat? (max 100): ');
	readln(pplatu);

	for i:=1 to pplatu-1 do begin
		write('Zadejte plat zamestnance cislo ', i, ': ');
		readln(platy[i]);
	end;
		write('Zadejte plat sefa: ');
		readln(platy[pplatu]);
end;

procedure pocetzamestnancu;
begin
	writeln('');
	writeln('Pocet zamestnancu je ', pplatu);
	writeln('----------------------');
end;

procedure prumplat;
begin
	prumer:=0;
	for j:=1 to pplatu do begin
		prumer:= prumer + platy[j];
	end;
	prumer := prumer / pplatu;
	writeln('Prumer platu je ', prumer:0:0, ' korun.');
	writeln('----------------------');
end;

procedure highpayed;
var
	nofempwhw: Integer;
	{numberofemployeeswithhighwage}
begin
	nofempwhw:=0;
	for j:=1 to pplatu do begin
		if (platy[j] > 12000) and (platy[j] < 17000) then begin
			nofempwhw:= nofempwhw + 1;
		end;
	end;
	writeln('Pocet zamestnancu s platem mezi 12 az 17 tisic korun je ', nofempwhw);
	writeln('----------------------');
end;

procedure rozdil;
var
	i,j, temp : Integer;
begin
	for j:=1 to pplatu-1 do
		for i:=1 to pplatu-1 do
		if platy[i+1]>platy[i] then begin 
			temp:=platy[i];
			platy[i]:=platy[i+1];
			platy[i+1]:=temp;
		end;
	writeln('Rozdil je ', platy[2] - platy[pplatu]);
	writeln('----------------------');
end;

begin
	vstup;
	pocetzamestnancu;
	prumplat;
	highpayed;
	rozdil;
	readln;
end.
