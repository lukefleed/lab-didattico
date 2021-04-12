x = linspace(-200,200,100); %usare 100 se si usa octave
y = linspace(-200,200,100); %usare 100 se si usa octave
z = linspace(-200,200,100); %usare 100 se si usa octave

[X,Y,Z] = meshgrid(x,y,z);

a=(1+sqrt(5))/2; 

p=(a*X-Y).*(a*X+Y);
q=(a*Y-Z).*(a*Y+Z);
r=(a*Z-X).*(a*Z+X);

k=4*sqrt(5)-8;

f=X.^2+Y.^2+Z.^2-1;
rhs=k*p.*q.*r;
F=f.^2-rhs;


axis equal
isosurface(X,Y,Z,F,0,X)