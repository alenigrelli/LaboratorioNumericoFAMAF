function z = funrbisec(y)
	global c;
	z = y - exp(-(1-c*y)^2);
end
