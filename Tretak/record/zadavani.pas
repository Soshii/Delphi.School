program zadavani;

var
  cisla: array[1..100] of Integer;
  cislo,p,i:Integer;
  
begin
  p:=0;
  writeln('Zadejte cislo, zaporne cislo ukonci vstup: ');
  readln(cislo);
  while (cislo>0) do begin
    p:=p+1;
    cisla[p]:=cislo;
    writeln('Zadejte cislo, zaporne cislo ukonci vstup: ');
    readln(cislo);
  end;
  
  for i:=p downto 1 do begin
    write(cisla[i], ', ');
  end;
  readln();
end.