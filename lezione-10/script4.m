## Sappiamo che ha minimo in 1,1
f=@(x,y) 100*(y-x^2)^2+(1-x^2);

d1=linspace(-2,2);
d2=linspace(-1,3);

min=neldermead(f,10^(-2),100,[-1,1],[-1,0],[2,1/2])