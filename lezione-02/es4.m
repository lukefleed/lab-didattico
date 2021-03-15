function es4(m)
    g = succ(m);
    for k = 2:m
        G(k-1) = g(k)/g(k-1);
    end
    format long
    r = G(end)
# confronto i grafici 
    for i=1:m
        y1(i) = r^i;
        y2(i) = g(i);
    end
    semilogy(y1)
    hold on
    semilogy(y2)
endfunction

