function es5(n)
 # v = rfibonacci(n);
 # c = (abs(v(end)))^(1/n) 
 # questo valore di c è meno accurato da quello dato nel pdf degli esercizi quindi utilizzo quello, anche per valori maggiore di 5000
c = 1.13198824;
for i = 1:n
    y2(i) = c^i;
end
f = abs(rfibonacci(n));
semilogy(f) 
hold on
semilogy(y2)
# l'output di octave ritorna uno strano warning, dicendo che omette valori non positivi. Non capisco come sia possibile, visto che ho dato il valore assoluto a tutto

end