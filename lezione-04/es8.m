x = linspace(-0.1,2.1,50);
y = linspace(-0.75,0.75,50);
z = linspace(-0.2,0.2,50);

[X,Y,Z] = meshgrid(x,y,z);

F = (X.*((X-1).^2).*(X-2)+Y.^2).^2 + Z.^2;

colormap spring
isosurface(X,Y,Z,F,0.03,X)