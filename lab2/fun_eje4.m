
function [f,fprim] = fun_eje4(x)
	global a = 27;
	f = x^3 - a;
	fprim = 3*x^2;
endfunction	