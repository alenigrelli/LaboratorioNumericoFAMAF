function d = dif_div(x,y)

  n = length(x);

  if length(x) == 1
    d = y(1);
  else
    d = (dif_div(x(2:n),y(2:n)) - dif_div(x(1:n-1),y(1:n-1))) / (x(n)-x(1));
  end

endfunction
