function [values] = eje2_2(x)
    for i = 1 : 5
        values(i) = @eje8(x, i-1);
    endfor
endfunction
