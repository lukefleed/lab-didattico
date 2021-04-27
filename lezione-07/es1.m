for n=100:100:1000
    d = ones(1,n);
    sd= 0.5*ones(1,n-1); %sotto diagonale
    Sd= 0.1*ones(1,n-1); %sopra diagonale

    A = zeros(n);
    A = diag(d) + diag(sd, -1) + diag(Sd,1);

    %FULL
    tic
    [L,U]=lu(A);
    time_lu_full(n/100)=toc;


    %SPARSE
    B = sparse(A);
    tic
    [L,U]=lu(B);
    time_lu_sparse(n/100)=toc;

   
end 

%Si plotta
    hold on
    plot(time_lu_full,'r')
    plot(time_lu_sparse,'b')
    pause(1)