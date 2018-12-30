clc
	% Czyszczenie okna polece�
clear all
	% Usuwanie wszystkich zmiennych z przestrzeni roboczej	
x1=[-5 -4 -3 -2 -1 0 1 2 3 4 5];
	% Wektor zadanych argument�w 
xi=-5:0.1:5;
	% Nowy wektor argument�w (przedzia� <-5;5>, d�ugo�� kroku r�wna 0.1)
y1=[9.5 10.1 11.3 12.5 13.7 15.1 16.7 18.4 20.7 22.5 25.8];
	% Wektor zadanych warto�ci
yi=interp1(x1,y1, xi,'line');
	% Funkcja interp1 wykonuje interpolacj� jedn� z kilku metod
	% W tym przypadku zastosowano interpolacj� kawa�kami liniow�
figure(1)
	% Utworzenie rysunku 1
plot(xi,yi,'b')
	% Funkcja plot s�u�y do rysowania wykres�w 2D
	% Lini� niebiesk� zosta�a narysowana interpolacja kawa�kami liniowa 
hold on
	% Polecenie hold on nie pozwala usun�� istniej�cego wykresu
	% Nowa krzywa zostanie wykre�lona w tym samym uk�adzie wsp�rz�dnych
plot(x1,y1,'r');
	% Lini� czerwon� zosta�a narysowana funkcja zadana
yj=interp1(x1,y1, xi,'spline');
	% Funkcja interp1 wykonuje interpolacj� jedn� z kilku metod
	% W tym przypadku zastosowano interpolacj� splajn�w
plot(xi,yj,'g')
	% Lini� zielon� zosta�a narysowana interpolacja splajn�w
hold on
yk=interp1(x1,y1, xi,'cubic');
	% Funkcja interp1 wykonuje interpolacj� jedn� z kilku metod
	% W tym przypadku zastosowano interpolacj� kawa�kami sze�cienn�
plot(xi,yk,'k')
	% Lini� czarn� zosta�a narysowana interpolacja kawa�kami sze�cienna
hold on
