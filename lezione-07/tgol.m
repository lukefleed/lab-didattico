function tgol(n,X,k)

  for i=1:k
    
    U=[X(2:n,:);zeros(1,n)];
    D=[zeros(1,n);X(1:n-1,:)];
    L=[X(:,2:n),zeros(n,1)];
    R=[zeros(n,1),X(:,1:n-1)];
    
    UL=[U(:,2:n),zeros(n,1)];
    UR=[zeros(n,1),U(:,1:n-1)];
    DL=[D(:,2:n),zeros(n,1)];
    DR=[zeros(n,1),D(:,1:n-1)];
    
    Y=U+D+L+R+UL+UR+DL+DR;
    X=Y==3|(X=Y==2&X==1);
    
    spy(X,'s');
    drawnow;
    
  end
  
end