function S = es3(f,a,b,N)
    h = (b-a)/N;
    somma1 = 0;
    somma2 = 0;
    fine = N/2 -1;
        for i = 1:fine
            somma1 += f(a + 2*i*h);
            somma2 += f(a + (2*i -1)*h); 
        end
    S = (h/3)*(f(a)+f(b) + 2*somma1 + 4*somma2);
end

