function ej7
	global c
	x = linspace(0, 1.5, 100);
	for i = 1 :100
		c = x(i);
		[hx, hf] = rnewton(@funrnw, 0.75, 1e-5, 100);
		u(i) = hx(end);
	end
	plot(x,u)
end
