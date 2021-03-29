x= 0:0.1:20;
y= x;
[X,Y] = meshgrid(x,y);
Z = 2.*sin((X.^2 + Y.^2).^(1/2));
surf(X,Y,Z) %in alternativa si può mettere anche mesh(Z)