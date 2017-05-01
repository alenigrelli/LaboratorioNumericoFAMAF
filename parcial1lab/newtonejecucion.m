function raiz = newtonejecucion(b)
	global a
	a = b;
	[hx, hf] = rnewton_modif(@funrnwtn, 1, 1e-5, 100);
	raiz = hx(end);
end
