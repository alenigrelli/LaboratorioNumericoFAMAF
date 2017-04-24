function [hx, hf] = rbisec(fun, I, e, m)
	a = I(1);
	b = I(2);
	u = fun(a);
	v = fun(b);
	d = (b-a);

	if (sign(u) == sign(v))
		return
	end

	n = 1;
	w = fun(d);

	while (n < m && abs(w) > e)
		d = d/2;
		c = a + d;
		w = fun(c);
		if sign(w) == sign(v)
			b = c;
			v = w;
		else
			a = c;
			u = w;
		end
		hx(n) = c;
		hf(n) = w;
		n++;
	end

endfunction
