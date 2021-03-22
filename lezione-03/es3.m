function fern(m)

A1=[0.85 0.04; -0.04 0.85];
b1=[0 ;1.6];
A2=[0.20 -0.26; 0.23 0.22];
b2=[0 ;1.6];
A3=[-0.15 0.28; 0.26 0.24];
b3=[0 ;0.44];
A4=[0 0;0 0.16];
b4=[0;0];
%Partizione di [0,1]
p1 = 0.85;
p2 = 0.92;
p3 = 0.99;
p4 = 1;

%x1 = [0.5 ; 0.5];
r = rand(1);
%Valore iniziale
S(:,1) = [0.5 ; 0.5];

if (r <= p1)
    for k=1:m
    S(:,k+1) = A1*S(:,k) + b1;
    end

    elseif (p1 <r && r<=p2)
        for k=1:m
        S(:,k+1) = A2*S(:,k) + b2;
        end
        
    elseif (p2<r && r<=p3)
        for k=1:m
        S(:,k+1) = A3*S(:,k) + b3;
        end
       
    else
        for k=1:m
        S(:,k+1) = A4*S(:,k) + b4;
        end
        
end
 axis off
 plot(S(1,:),S(2,:),'g')


