function [hx, hf] = rnewton(fun, x, tol, m)
		hx = [];
		hf = [];
		global a=27
[valorf, valorfpri] = fun(x);

		if abs(valorf) < tol
			break;
		endif

		for k = 1 : m
			x1 = x - (valorf/valorfpri);
			hx(k) = x1;
			[valorf, valorfpri] = fun(x1);
			hf(k) = valorf;
			if abs((x1 - x)/x1) < tol || valorf < tol
				break;
			endif
			x = x1;

		endfor

endfunction
