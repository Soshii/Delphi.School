program matice;

uses crt;

var 
	r,s,pr,ps,min,max:Integer;
	mat:array[1..100, 1..100] of Integer;
	


procedure zapisdomatice;
begin
	for pr:=1 to r do 
		begin
			for ps:=1 to s do 
				begin
					write('Zadej prvek do ', pr ,'. radku a ', ps, '. sloupce: ');
					read(mat[pr,ps]);
				end;
		end;
end;

procedure minmax;
begin
	max:= -5000;
	min:= 5000;
	for pr:=1 to r do 
		begin
			for ps:=1 to s do 
				begin
					if (mat[pr,ps]>max) then 
						begin
							max:=mat[pr,ps];
						end;
					if (mat[pr,ps]<min) then 
						begin
							min:=mat[pr,ps];
						end;
				end;
				
			
		end;
	writeln('Nejvetsi a nejmensi prvek byl vypocitan. Zmacknete libovolnou klavesu pro pokracovani. ');
	readln();
end;

procedure vypismatice;
begin
	for pr:=1 to r do 
		begin
			for ps:=1 to s do 
				begin
					write(mat[pr,ps]:6);
				end;
			readln();
		end;
	readln();
end;

begin

	write('Zadej pocet radku: ');
	readln(r);
	write('Zadej procet sloupcu: ');
	readln(s);
	zapisdomatice;
	writeln();
	minmax;
	readln();
	writeln('Nejmensi prvek matice je ', min, ' a nejvetsi prvek je ', max);
	readln();
	vypismatice;
	writeln('Program dokoncil praci, zmacknete libovolnou klavesu pro ukonceni. ');
	readln();
end.




