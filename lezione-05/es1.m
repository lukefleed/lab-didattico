function es1(p,t)
n = size(p,2);
#prendo le radici di p
r = roots(p);
p(n)+=t;
#radici con +t
s = roots(p); #il nuovo p

plot(r,'*')
hold on 
plot(s,'*')

