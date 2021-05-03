f = @(x) exp(x);
N = 100:100:1000;
for i = 100:100:1000
    Y(i/100) = abs((e-1)-es3(f,0,1,i));
end 
ly = log(Y);
ln = log(N);
p= polyfit(ln,ly,1);
p(1)