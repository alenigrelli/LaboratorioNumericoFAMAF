function pol = horn(an, x)
	size = length(an);
	pol = an(size);
	i = size-1;
	while(0 < i)
		pol = an(i) + x*pol;
		i--;
	endwhile
endfunction
