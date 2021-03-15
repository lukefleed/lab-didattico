function g = succ(n)
    g(1:2)=1;
    g(3) = 2;
    for i = 4:n
        g(i) = g(i-1) + g(i-3);
    end
endfunction