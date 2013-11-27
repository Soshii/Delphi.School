program porovnani;

var
	num1,num2:Integer;
	
procedure porovnat;
begin
	if (num1 <> num2) then 
		begin
			if (num1 > num2) then 
				begin
					writeln('Prvni cislo je vetsi nez druhe cislo');
				end
			else 
				begin
					writeln('Druhe cislo je vetsi nez prvni cislo');
				end;
		end
	else
		begin
			writeln('Cisla jsou stejna');
		end;
end;

begin
	write('Zadejte prvni cislo: ');
	readln(num1);
	write('Zadejte druhe cislo: ');
	readln(num2);
	writeln('--------------------');
	porovnat;
	readln();
end.
