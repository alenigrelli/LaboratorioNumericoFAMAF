function raiz = lab2_eje4(b)
	global a
	a = b;
	[hx, hf] = rnewton(@fun_eje4, 1, 1e-5, 100);
	raiz = hx(end);
end
