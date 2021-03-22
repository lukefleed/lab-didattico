function es7(C,m)
    n = size(C,1)/2;
    for j = 1:n
        dets(j) = abs(det(C(2*j-1:2*j,1:2)));
    end

    dets = max(dets,max(dets)/(25*n)
    dets = dets/sum(dets);
    p(1) = 0;
    for j = 1:n
        p(i) = p(i-1) + dets(i-1);
    end

    S(:,1)= [69 ; 420]; #numeri casuali
        for k = 1:m 
            r = rand;
            i = sum(p<r);
            S(:k+1) = C(2*i-1:2*i,1:2)*S(:,k) + C(2*i-1:2*1,3);
        end
    plot(S(1,21:20+m),S(2,21:20+m),'m.')

endfunction 

