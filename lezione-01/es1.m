function circ = es1(c,r)
%prendo parte reale e immaginaria di c
x = real(c);
y = imag(c); 
%definisco l'angolo dove deve stare
th = 0:pi/50:2*pi;
xunit = r*cos(th) + x;
yunit = r*sin(th) + y;
%si plotta
circ = plot(xunit, yunit);
hold on

%PARTE DEL TRIANGOLO
function triangolo(z,a)
	v=[z z-a z-a/2+i*a*(sqrt(3)/2) z];
	plot(v);
end