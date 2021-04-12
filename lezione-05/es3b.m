function es3b(k)
    P1 = [1];
    P2 = [1 0];
    t = linspace(-1,1,1000);
    hold on
    plot(t,polyval(P1,t))
    hold on
    plot(t,polyval(P2,t))
    for i = 3:k
        P3 = 2*[P2 0] - [0 0 P1];
        P1 = P2;
        P2 = P3;
        hold on
        plot(t, polyval(P3,t))
    end
   
endfunction 