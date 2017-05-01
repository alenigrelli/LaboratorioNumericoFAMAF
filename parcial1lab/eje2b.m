function eje2b
	x = linspace(1, 2, 100);
	for i = 1 :100
		c = x(i);
		[hx, hf] = funrnwtn(c);
		u(i) = hx(end);
	end
	plot(x,u)
end
