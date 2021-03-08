
t=0:pi/100:2*pi;
v=exp(i*t);
axis([-10 10 -10 10],'equal');

# Prendo il logaritmo complesso di v
w=log(v);
plot(w)
hold on
%questo è il caso r=1 del caso che vederemo dopo nel ciclo for

%plotto le varie circonferenze dei logaritmi  con i raggi da 1 ... 10
for r=1:10
    v = r*exp(i*t)
    plot(v)
    plot(log(v))
end
   


