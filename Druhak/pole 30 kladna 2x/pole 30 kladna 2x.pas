program posloupnost;

var
	mat:array[1..5] of Integer;
	i:Integer;

procedure vypiskladna;
begin
	write('Dvojnasobky kladnych prvku pole jsou tato cisla: ');
	for i:=1 to 5 do 
		begin
			if (mat[i]>0) then 
				begin
					write(mat[i]*2:6);
				end
		end;
end;

procedure vypismatici;
begin
	write('Pole obsahuje tyto prvky: ');
	for i:=1 to 5 do 
		begin
			write(mat[i]:6);
		end;
end;

procedure zadejmatici;
begin
	for i:=1 to 5 do 
		begin
			write('Zadej prvek do pole na pozici ', i, ': ');
			readln(mat[i]);
		end;
end;

begin
	zadejmatici;
	readln();
	vypismatici;
	readln();
	vypiskladna;
	readln();
end.
