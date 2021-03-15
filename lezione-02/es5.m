function es5(n)
 # v = rfibonacci(n);
 # c = (abs(v(end)))^(1/n) 
 # questo valore di c è meno accurato da quello dato nel pdf degli esercizi quindi utilizzo quello, anche per valori maggiore di 5000
c = 1.13198824;
for i = 1:n
    f = rfibonacci(i);
    y1(i) = abs(f(end));
    y2(i) = c^i;
end
semilogy(y1);
semilogy(y2);

end