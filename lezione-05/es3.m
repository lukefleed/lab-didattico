function es3(k)
p(1) = 1;
t=linspace(-1,1,500);
for i = 2:k
    p(i) = ((2*k - 1)*p(i-1) - (k-1)*p(k-2))/k;
    pv(i) = polyval(p(i),t)
    hold on
    plot(t,pv)
end 