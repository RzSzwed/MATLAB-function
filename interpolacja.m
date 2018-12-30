clc
	% Czyszczenie okna poleceñ
clear all
	% Usuwanie wszystkich zmiennych z przestrzeni roboczej	
x1=[-5 -4 -3 -2 -1 0 1 2 3 4 5];
	% Wektor zadanych argumentów 
xi=-5:0.1:5;
	% Nowy wektor argumentów (przedzia³ <-5;5>, d³ugoœæ kroku równa 0.1)
y1=[9.5 10.1 11.3 12.5 13.7 15.1 16.7 18.4 20.7 22.5 25.8];
	% Wektor zadanych wartoœci
yi=interp1(x1,y1, xi,'line');
	% Funkcja interp1 wykonuje interpolacjê jedn¹ z kilku metod
	% W tym przypadku zastosowano interpolacjê kawa³kami liniow¹
figure(1)
	% Utworzenie rysunku 1
plot(xi,yi,'b')
	% Funkcja plot s³u¿y do rysowania wykresów 2D
	% Lini¹ niebiesk¹ zosta³a narysowana interpolacja kawa³kami liniowa 
hold on
	% Polecenie hold on nie pozwala usun¹æ istniej¹cego wykresu
	% Nowa krzywa zostanie wykreœlona w tym samym uk³adzie wspó³rzêdnych
plot(x1,y1,'r');
	% Lini¹ czerwon¹ zosta³a narysowana funkcja zadana
yj=interp1(x1,y1, xi,'spline');
	% Funkcja interp1 wykonuje interpolacjê jedn¹ z kilku metod
	% W tym przypadku zastosowano interpolacjê splajnów
plot(xi,yj,'g')
	% Lini¹ zielon¹ zosta³a narysowana interpolacja splajnów
hold on
yk=interp1(x1,y1, xi,'cubic');
	% Funkcja interp1 wykonuje interpolacjê jedn¹ z kilku metod
	% W tym przypadku zastosowano interpolacjê kawa³kami szeœcienn¹
plot(xi,yk,'k')
	% Lini¹ czarn¹ zosta³a narysowana interpolacja kawa³kami szeœcienna
hold on
