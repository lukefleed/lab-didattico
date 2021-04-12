u = linspace(0,6*pi,400);
v = linspace(0,2*pi,400);
[U,V] = meshgrid(u,v);

x = 2*(1 - exp(U/(6*pi))).*cos(U).*(cos(V/2)).^2;
y = 2*(-1 + exp(U/(6*pi))).*sin(U).*(cos(V/2)).^2;
z = 1 - exp(U/(3*pi)) - sin(V) + (exp(U/(6*pi))).*sin(V);

mesh(x,y,z)

