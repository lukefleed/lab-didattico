function v=lagrange(x,y,interpx)
	n=length(x);
	m=length(interpx);
	L=ones(n,m);
	for i=1:n
		for h=1:m
			for j=1:i-1
				L(i,h)*=((interpx(h)-x(j))/(x(i)-x(j)));
			end
			for j=i+1:n
				L(i,h)*=((interpx(h)-x(j))/(x(i)-x(j)));
			end
		end
	end

	v=0;
	for i=1:n
		v=v+y(i)*L(i,:);
	end
end