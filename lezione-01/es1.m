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

%Il triangolo per ora mi scoccio