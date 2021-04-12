x = linspace(-0.1,2.1,200);
y = linspace(-0.75,0.75,200);
z = linspace(-0.2,0.2,200);

[X,Y,Z] = meshgrid(x,y,z);

F=(X.*((X-1).^2).*(X-2)+Y.^2).^2 + Z.^2;

isosurface(X,Y,Z,F,0.03,X)
