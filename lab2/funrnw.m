
function [f,fprim] = funrnw(y)
	global c;
	f = y - exp(-(1-c*y)^2);
	fprim = 1 - exp(-(1 - c*y)^2) * 2*(1 - c*y)*c;
endfunction
