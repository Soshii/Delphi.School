Program rovnice;

uses crt;
var 
    a,b,c,diskr,x1,x2:real;

begin clrscr;
writeln('Zadej koeficient a: ');
readln(a);
writeln('Zadej koeficient b: ');
readln(b);
writeln('Zadej koeficient c: ');
readln(c);

if a=0 then begin
                writeln('Rovnice je linearni.');
                if (b=0) and (c<>0) then writeln('Nema reseni.');
                if (b=0) and (c=0) then writeln('Ma nekonecne mnoho reseni');
                if (b<>0) and (c=0) then writeln('Ma nekonecne mnoho reseni')
                                else writeln('x=',(c*-1)/b:2:2);
            end;

diskr:=sqr(b)-4*a*c;
if diskr<0 then writeln('Rovnice nema reseni v realnych cislech');
if diskr=0 then begin
                writeln('Rovnice ma jeden koren');
                x1:=(b*-1)/2*a;
                writeln('x=',x1:0:2);
                end;
if diskr>0 then begin
                x1:=((b*(-1)) + sqrt(diskr))/(2 * a);
                x2:=((b*(-1)) - sqrt(diskr))/(2 * a);
                writeln('x1=',x1:0:2);
                writeln('x2=',x2:0:2);
                end;
readln;
end.