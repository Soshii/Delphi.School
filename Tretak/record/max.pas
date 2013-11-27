program maximus;

var
  cisla,maxus,pozice: Array[1..100] of Integer;
  max,p,pocet,i,y,z: Integer;
  ans: Char;
  
begin

max:=-32767;
pocet:=0;
ans:='a';

while (ans = 'a') or (ans = 'A') do begin
  pocet:=pocet+1;
  write('Zadej cislo na pozici ', pocet, ': ');
  readln(cisla[pocet]);
  if (cisla[pocet] > max) then 
    max:=cisla[pocet]; 
  write('Chcete pokracovat v zadavani cisel? Ano = a,Ne = n: ');
  readln(ans);
end;

z:=1;
for i:=1 to pocet do begin
  if cisla[i] = max then begin
    maxus[i]:=cisla[i];
    writeln('Maximum je: ', max);
    writeln(z, ' maximum je na pozici ', i);
    z:=z+1;
  end;
  end;

readln();

end.