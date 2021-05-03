n=11;
x=5*cos(linspace(0, pi, n));
f=@(t) 1./(1+t.^2);
m=100;
y=feval(f,x);
interpx=linspace(-5,5,m);
interpy1=interp1(x,y,interpx,'linear');
interpy2=interp1(x,y,interpx,'spline');
interpy3=interp1(x,y,interpx,'pchip');
val=feval(f,interpx);

v1=abs(val-interpy1);
v2=abs(val-interpy2);
v3=abs(val-interpy3);

hold on
plot(interpx,log10(v1),'r')
pause(2)
plot(interpx,log10(v2),'g')
pause(2)
plot(interpx,log10(v3),'b')
pause(2)
