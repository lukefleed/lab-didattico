function es3(k)
    P1 = [1];
    P2 = [1 0];
    t = linspace(-1,1,1000);
    plot(t,polyval(P1,t))
    plot(t,polyval(P2,t))
    for i = 3:k
        P3 = ((2*(i-1))*[P2 0] .- (i-1)*[0 0 P1])/i;
        P1 = P2;
        P2 = P3;
        plot(t, polyval(P3,t))
    end
   
endfunction 