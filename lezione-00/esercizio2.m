% ANDREBBERO MESSI SU DUE FILE DIVERSI, MA MI SCOCCIO 

 % PUNTO 1

t=linspace(0,50,1000);
plot(t.*sin(t), 'r')

 % PUNTO 2 (Grazie Mario)

t=linspace(-2,2,200);
xt=t.*(3-t.^2);
yt=3*t.^2;
plot(xt,yt,'g','LineWidth',2)

