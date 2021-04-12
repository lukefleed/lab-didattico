x = linspace(-200,200,200); %su octave meglio mettere 50 punti, non oltre
y = linspace(-200,200,200); %su octave meglio mettere 50 punti, non oltre
z = linspace(-200,200,200); %su octave meglio mettere 50 punti, non oltre
[X,Y,Z] = meshgrid(x,y,z); %su octave meglio mettere 50 punti, non oltre

mu=2;
p=Z-1+sqrt(2)*X;
q=Z-1-sqrt(2)*X;
r=Z+1+sqrt(2)*Y;
s=Z+1-sqrt(2)*Y;
lamda=(3*mu-1)/(3-mu);
F=(X.^2 + Y.^2 + Z.^2 -mu).^2 -lamda.*p.*q.*r.*s;

colormap spring
axis equal
isosurface(X,Y,Z,F,0,X)
