function f = es3(m)
f(1:2) = 1;
for i = 3:m
    f(i) = f(i-1) + f(i-2);
end
