clc
clear all
%Aproksymowana funkcja – punkt 2.
x=-1:0.01:1;
y=x./(x.^2+2);
%Wspó³czynniki wielomianów aproksymuj¹cych – punkt 3.
a1=polyfit(x,y,1);
a2=polyfit(x,y,2);
a3=polyfit(x,y,3);
a4=polyfit(x,y,4);
a5=polyfit(x,y,5);
%U¿ycie funkcji programu polyval – punkt 4.
p1=polyval(a1,x);
p2=polyval(a2,x);
p3=polyval(a3,x);
p4=polyval(a4,x);
p5=polyval(a5,x);
%Maksymalny b³¹d bezwzglêdny aproksymacji – punkt 5.
b1=abs(y-p1);
b2=abs(y-p2);
b3=abs(y-p3);
b4=abs(y-p4);
b5=abs(y-p5);
bm1=max(b1)