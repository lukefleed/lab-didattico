%definire un vettore v di numeri complessi che rappresentino “tanti” punti equispaziati
%sulla circonferenza di centro 1 e raggio 1

th = 0:pi/100:2*pi;
v = exp(i*th) + 1;
%plotto 
plot(v)
axis([-10 10 -10 10],'equal');
hold on

%prima e ultima cifra del mio numero di matricola
a = 6;
b = 5;
w = (a*v +b)./(v+1);
plot(w)

% DOMANDA: Qual'è la figura che ne risulta? Che cosa congetturate riguardo alle propriet`a della trasformazione di M¨obius che avete usato? Rispondete commentando lo script.
% RISPOSTA: Congetturo che il raggio dopo la trasformazione è diminuito e la circonferenza è stata traslata a destra

