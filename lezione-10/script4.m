## Sappiamo che ha minimo in 1,1
f=@(x,y) 100*(y-x.^2).^2+(1-x).^2;

ab=[-2,2];
cd=[-1,3];

[X,Y]=meshgrid(ab(1):0.01:ab(2),cd(1):0.01:cd(2));
Z=f(X,Y);

surface(X,Y,Z)
shading flat

hold on

min=neldermead(f,10^(-7),100,[-1,0],[1,0],[0,2])

pause(60)
