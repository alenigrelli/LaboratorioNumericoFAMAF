function [underflow overflow] = eje3
result = 2;
while (result != 0)
	anterior = result;
	result = result/2;
endwhile
underflow = anterior;

result1 = 2;
while (!isinf(result1))
	anterior1 = result1;
	result1 = result1*2;
endwhile
overflow = anterior1;