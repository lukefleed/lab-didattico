v = -5:0.01:5;
[x y]=meshgrid(v);
f =((x-1).^2+y.^2-4).*((x+1).^2+y.^2-4).*(x.^2+(y-sqrt(3)).^2-4) < 10;
f = double(f);
f(f == 0) = NaN;
surf(x, y, f)
