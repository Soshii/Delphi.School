program prohozeni;

var
	matice: array[1..4,1..4] of Integer;
	pomocne: array[1..4] of Integer;
	i,j,u,p,k,l,o,g,h:Integer;

begin

	for i:=1 to 4 do begin
		for j:=1 to 4 do begin
			write('Zadejte prvek do pozice ', i, ', ', j, ': ');
			readln(matice[i,j]);
		end;
    end;

	for u:=1 to 4 do begin
		for p:= 1 to 4 do begin
			write(matice[u,p]:3);
		end;
		writeln();
	end;

	for k:=1 to 4 do begin
		matice[2,k]:=pomocne[k];
	end;

	for l:=1 to 4 do begin
		matice[2,l]:=matice[1,l];
	end;

	for o:=1 to 4 do begin
		matice[1,o]:=pomocne[k];
	end;

	for g:=1 to 4 do begin
		for h:= 1 to 4 do begin
			write(matice[u,p]:3);
		end;
		writeln();
	end;
	readln();
end.
