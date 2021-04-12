function es1(p,t)
n = size(p,2);

r = roots(p);
p(n) = p(n) + t;
s = roots(p); 

plot(r,'*')
hold on 
plot(s,'*')

