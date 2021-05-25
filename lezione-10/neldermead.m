function xmin=neldermead(f,epsilon,itermax,x1,x2,x3)

	f1=f(x1(1),x1(2));
	f2=f(x2(1),x2(2));
	f3=f(x3(1),x3(2));

	k=0;
	while((norm(x2-x1,2)+norm(x3-x1,2)>epsilon)&&(abs(f2-f1)+abs(f3-f1)>epsilon)&&(k<itermax))
		k+=1;
		X=[x1;x2;x3];

		# Triangoli
		line([x1(1) x2(1)],[x1(2) x2(2)],'Color','r');
		hold on;
		line([x2(1) x3(1)],[x2(2) x3(2)],'Color','r');
		line([x3(1) x1(1)],[x3(2) x1(2)],'Color','r');

		[F,I]=sort([f1,f2,f3]);
		x1=X(I(1),:);
		x2=X(I(2),:);
		x3=X(I(3),:);
		f1=F(1);
		f2=F(2);
		f3=F(3);

		xm=(x1+x2)/2;
		xr=2*xm-x3;
		fr=f(xr(1),xr(2));
		fm=f(xm(1),xm(2));

		if((f1<=fr)&&(fr<f2))
			x3=xr;
		elseif(fr<f1)
			xe=2*xr-xm;
			fe=f(xe(1),xe(2));
			if(fe<fr)
				x3=xe;
			else
				x3=xr;
			end
		else
			xc=(xm+xr/2);
			fc=f(xc(1),xc(2));
			if(fc<f3)
				x3=xc;
			else
				x2=(x2+x1)/2;
				x3=(x3+x1)/2;
			end
		end
		f1=f(x1(1),x1(2));
		f2=f(x2(1),x2(2));
		f3=f(x3(1),x3(2));
	end

	xmin=x1;

	if(k>=itermax)
		printf("Fallimento: raggiunto il massimo numero di iterazioni.\n");
	end

end
