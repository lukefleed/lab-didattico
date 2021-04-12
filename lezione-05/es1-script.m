p = [1 0 0 -1];
i = [-1 1];
q = conv(conv(i,i),conv(i,i));
t = 0.02;

es1(p,t)

figure(2)
v = linspace(0,1.5,100);
plot(v,polyval(p,v))
hold on
plot(v,polyval(q,v))