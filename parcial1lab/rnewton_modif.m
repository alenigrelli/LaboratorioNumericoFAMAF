function [hx, hf] = rnewton_modif(fun, x, tol, m)
		hx = [];
		hf = [];
[valorf, valorfpri] = fun(x);

		if abs(valorf) < tol
			break;
		endif

		for k = 1 : m
			x1 = x - (valorf/valorfpri);
			hx(k) = x1;
			valorf = fun(x1);
			hf(k) = valorf;
			if abs((x1 - x)/x1) < tol || abs(valorf) < tol
				break;
			endif
			x = x1;

		endfor

endfunction
