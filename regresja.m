%1) W programie Matlab napisaæ program do wyznaczania regresji liniowej (aproksymacja) funkcji y=x/(x*x +2)
%w przedziale [-1,1] z krokiem 0,01 metod¹ najmniejszych kwadratów i narysowaæ wykresy funkcji
%aproksymowanej i wielomianu aproksymuj¹cego.
%2) Dokonaæ aproksymacji œredniokwadratowej funkcji y=x/(x*x +2) wielomianem w przedziale
%[-1,1] z krokiem 0,01 wykorzystuj¹c wbudowan¹ funkcjê Matlaba polyfit.
%3) Zmieniaj¹c kolejno stopieñ wielomianu (od 1 do 5) wyznaczyæ wspó³czynniki wielomianów
%aproksymuj¹cych wykorzystuj¹c funkcjê polyfit.
%4) Dla danego stopnia wielomianu wyznaczyæ wartoœci wielomianu aproksymuj¹cego
%wykorzystuj¹c funkcjê polyval.
%5) Dla danego stopnia wielomianu wyznaczyæ maksymalny b³¹d bezwzglêdny aproksymacji
%(maksimum wartoœci bezwzglêdnej z ró¿nicy pomiêdzy funkcj¹ funkcj¹ aproksymowan¹ a
%wielomianem aproksymuj¹cym).
%6) Dla ka¿dego stopnia wielomianu narysowaæ wykresy funkcji aproksymowanej (y = f(x)) i
%wielomianu aproksymuj¹cego w jednym uk³adzie wspó³rzêdnych a wykres wykres bezwzglêdnego
%b³êdu aproksymacji w drugim.%

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
bm2=max(b2)
bm3=max(b3)
bm4=max(b4)
bm5=max(b5)
%Wykresy funkcji aproksymowanej i wielomianu aproksymuj¹cego oraz wykresy
%b³êdów – punkt 6.
figure(1)
subplot(2,1,1)
plot(x,y,'g',x,p1,'r')
title('Aproksymacja wielomianem 1-go stopnia')
grid on
xlabel=('x');
ylabel=('y');
subplot(2,1,2)
plot(x,b1,'b')
title('Wykres bledu aproksymacji')
grid on
xlabel=('x');
ylabel=('y');
figure(2)
subplot(2,1,1)
plot(x,y,'g',x,p2,'r')
title('Aproksymacja wielomianem 2-go stopnia')
grid on
xlabel=('x');
ylabel=('y');
subplot(2,1,2)
plot(x,b2,'b')
title('Wykres bledu aproksymacji')
grid on
xlabel=('x');
ylabel=('y');
figure(3)
subplot(2,1,1)
plot(x,y,'g',x,p3,'r')
title('Aproksymacja wielomianem 3-go stopnia')
grid on
xlabel=('x');
ylabel=('y');
subplot(2,1,2)
plot(x,b3,'b')
title('Wykres bledu aproksymacji')
grid on
xlabel=('x');
ylabel=('y');
figure(4)
subplot(2,1,1)
plot(x,y,'g',x,p4,'r')
title('Aproksymacja wielomianem 4-go stopnia')
grid on
xlabel=('x');
ylabel=('y');
subplot(2,1,2)
plot(x,b4,'b')
title('Wykres bledu aproksymacji')
grid on
xlabel=('x');
ylabel=('y');
figure(5)
subplot(2,1,1)
plot(x,y,'g',x,p5,'r')
title('Aproksymacja wielomianem 5-go stopnia')
grid on
xlabel=('x');
ylabel=('y');
subplot(2,1,2)
plot(x,b5,'b')
title('Wykres bledu aproksymacji')
grid on
xlabel=('x');
ylabel=('y');
%Wykres b³êdu w funkcji stopnia wielomianu aproksymuj¹cego – punkt 7.
figure(6)
plot(x,b1,'r',x,b2,'g',x,b3,'b',x,b4,'y',x,b5,'k')
xlabel=('x');
ylabel=('y');
title('Porownanie bledow aproksymacji')
M=legend('Wielomian 1-go stopnia','Wielomian 2-go stopnia','Wielomian 3-
go stopnia','Wielomian 4-go stopnia','Wielomian 5-go stopnia');
grid on