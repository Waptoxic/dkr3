function f(x:real):real;
begin
f:=2*x*x*x-2*x*x-1*x+19;         
end;
var a,b,h,s,y:real;
    n,i:integer;
begin
repeat
writeln('Введите левую границу интервала от -5 до 0 a=');
readln(a);
until (a>=-5)and(a<=0);
repeat
writeln('Введите правую границу интервала от 0 до 5 b=');
readln(b);
until (b>=0)and(b>a)and(b<=5);
repeat
write('Введите число разбиений от 20 до 1000 n=');
readln(n);
until (n>=20)and(n<=1000);
h:=(b-a)/n;
s:=(f(a)+f(b))/2;
for i:=1 to n-1 do
s:=s+f(a+i*h);
s:=s*h;
writeln('S=',s:0:5);
y:=f(b)-f(a);  
writeln('Аналитическое значение=',y:0:5);            
writeln('Абсолютная погрешность=',abs(y-s):0:5);
writeln('Относительная погрешность=',abs(y-s)/y)
end.