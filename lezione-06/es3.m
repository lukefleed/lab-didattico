n=11;
x=5*cos(linspace(0, pi, n));
f=@(t) 1./(1+t.^2);
m=100;
y=feval(f,x);
interpx=linspace(-5,5,m);
interpy=lagrange(x,y,interpx);
val=feval(f,interpx);

v=abs(val-interpy);

plot(interpx,log10(v),'r')
pause(2)
