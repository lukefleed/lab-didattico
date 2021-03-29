%PRIMA FUNZIONE
f=@(x,y) 2*sin((X.^2 + Y.^2).^(1/2));
x= 0:0.1:20;
y = x;
[X,Y] = meshgrid(x,y);
mesh(x,y,f(X,Y))

