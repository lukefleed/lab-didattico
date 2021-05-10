m = 1;
h = 4;
k = 0;
F= 0;
c(1) =1;
c(2) = 0;
a = 1;
w = 1.5; #w = 1.8 #w = 2

F=@(t) a*cos(w*t);
f=@(t,x) [x(2);(-h*x(1) - k*x(2) + F(t))/m];
[t,x] = ode45(f,[0 60],c);

hold on 
plot(t,x(:,1),'b')
plot(t,F(t),'r')
legend("Posizione","Forza esterna");
pause(60)