%Questa funzione viene richiamata nell'esercizio 5 ed è necessaria per il suo funzionamento

function rf = rfibonacci(m)
rf(1:2) = 1;
a = [1 -1];
    for i=3:m
        p = a(randi(2));
        rf(i) = rf(i-1) + p*rf(i-2);
    end
endfunction 
