a = [1 -2];
b = [1 -1];
c = conv(a,conv(a,a));
p = conv(c,b);
t = 0.05;

es1(p,t)


r = conv(c,[1 ,1]);
s = p + (t/norm(r,2))*r

P = roots(p);
S = roots(s); 
figure(2)
plot(P,'*')
hold on 
plot(S,'*')
waitfor(gcf)
