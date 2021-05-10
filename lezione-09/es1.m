scelta=input("Sceglie un tipo di oscillatore (scrivere 1, ..., 4): \n [1] Oscillatore libero non smorzato \n [2] Oscillatore libero sottosmorzato \n [3] Oscillatore libero sovrasmorzato \n [4] Oscillatore forzato smorzato \n Scrivi qui la tua scelta:  ")

h=10;

switch(scelta)
    case 1
        m = 1;
        h = 10;
        k = 0;
        F= 0;
        c(1) =1;
        c(2) = 1;
        a = 0;
        b = 60;

    case 2
        m = 1;
        h = 10;
        k = 0.5;
        F= 0;
        c(1) =1;
        c(2) = 1;
        a = 0;
        b = 60;
    case 3
        m = 1;
        h = 10;
        k = 10;
        F= 0;
        c(1) =1;
        c(2) = 1;
        a = 0;
        b = 60;

    case 4
        m = 2;
        h = 10;
        k = 0.75;
        F= 25;
        c(1) =2;
        c(2) = 0;
        a = 0;
        b = 60;
    otherwise
        disp("Wrong answer")       
end


f=@(t,x) [x(2); (-h*x(1)-k*x(2)+F)/m];

[t,x] = ode45(f,[0 60],c);
#posizione
hold on
plot(t,x(:,1))
plot(t,x(:,2))
legend("Posizione","Velocità");
pause(60)

