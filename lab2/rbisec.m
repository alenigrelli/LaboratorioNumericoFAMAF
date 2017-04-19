function [hx, hf] = rbisec(fun, I, e, m)
	if(length(I) == 2)
	a = I(1);
	b = I(2);
	fa = fun(I(1));
	fb = fun(I(2));
	hx = [];
	hf = [];

	if sign(fa) == sign(fb)
		printf("la funcion tiene el mismo signo en a y b")
		break;
	endif

	error = b-a;
	for n = 1 : m
		error = error/2;
		hx(n) = error;
		c = a + error;																				
		fc = fun(c);
		hf(n) = fun(c);
		if (abs(fc) < e)
			printf("converge")
			break;
		endif
		if(sign(fa) != sign(fc))
			b = c;
			fb = fc;
		else
			a = c;
			fa = fc;
		endif
		endfor
	endif
endfunction
