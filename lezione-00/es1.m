function Ahilb = esercizio1(A)
%prende una matrice nxn
n = size(A,1);
Ahilb = ones(n,n);
for i = 1:n
    for j = 1:n;
        Ahilb(i,j) = 1/(i+j -1);
    end
end

%adesso ho una matrice Ahilb di hilbert di ordine 10

%  Costruisco il vettore colonna u
u = ones(10,1);
% Costruisco il vettore b
b = Ahilb*u;

%Risolvo il sistema di Matlab

w = mldivide(Ahilb,b)

% Faccio la norma 2
 norma = norm(w-u,2)
% Condizionamento di A
 condizionamento = cond(Ahilb)

endfunction
