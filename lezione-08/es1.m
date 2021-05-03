function S=es1(f,a,b,N)
h = (b-a)/N;
rapp = (f(a) + f(b))/2;
somma = 0;
    for i=1:N-1
        somma+=f(a + i*h);
    end
S = h*(rapp + somma);
end

