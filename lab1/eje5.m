function retresult = fact (n)
  if (n > 0)
    retresult = n * fact (n-1);
  else
    retresult = 1;
  endif
endfunction
