function w = ilagrange(x,y,z)

w = [];

	for i=1 : length(z)
		s = 0;
		for j=1 : length(x)
			p = 1;
			q = 1;
			for k=1 : length(x)
				if j~=k
					p = p*(z(i)-x(k));
					q = q*(x(j)-x(k));
				endif
			endfor
			s = s + y(j)*p/q;
		endfor
		w = [w,s];
	endfor
endfunction
