%Plot sezioni del piano
M=zeros(200);
Z=linspace(-4,4,200);
for i=1:200
    for j=1:200
        y=Z(i);
        x=Z(j);
        f=((x-1)^2+y^2-4)*((x+1)^2+y^2-4)*(x^2+(y-sqrt(3))^2-4);
        if(f<1)
            M(i,j)=1;
        elseif(f<5)
            M(i,j)=5;
        elseif(f<10)
            M(i,j)=10;
        end
    end
end
figure(3)
imagesc(M)

