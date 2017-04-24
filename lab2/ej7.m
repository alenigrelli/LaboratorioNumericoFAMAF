function ej7
	global c
	x = linspace(0, 1.5, 100);
	for i = 1 :100
		c = x(i)
		[hx, hf] = rbisec(@fun, [0, 1.5], 1e-5, 100);
		u(i) = hx(end);
	end
	plot(x,u)
end
