
function [f,fprim] = funrnwtn(x)
	global a;
	f = x^3 - a;
	fprim = 3*x^2;
endfunction
