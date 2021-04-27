for n=100:100:10000
    d = ones(1,n);
    sd= 0.5*ones(1,n-1); %sotto diagonale
    Sd= 0.1*ones(1,n-1); %sopra diagonale

    A = zeros(n);
    A = diag(d) + diag(sd, -1) + diag(Sd,1);

    %FULL
    tic
    [L,U]=lu(A);
    time_lu_full=toc;


    %SPARSE
    B = sparse(A);
    tic
    [L,U]=lu(B);
    time_lu_sparse=toc;

    %Si plotta
    hold on
    plot(time_lu_full)
    plot(time_lu_sparse)
    wait 2
end