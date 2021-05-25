## Sappiamo che ha minimo in 1,1
f=@(x,y) 100*(y-x.^2).^2+(1-x).^2;

ab=[-2,2];
cd=[-1,3];

[X,Y]=meshgrid(ab(1):0.01:ab(2),cd(1):0.01:cd(2));
Z=f(X,Y);

surface(X,Y,Z)
shading flat

hold on

min=neldermead(f,10^(-2),100,[-1,1],[-1,0],[2,1/2])

pause(10)

## Per qualche motivo Octave non riesce a plottare i triangoli, utilizzando GnuPlot si ottiene invece il risultato desiderato. Non testato su matlab 