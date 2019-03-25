function [sum] = myCos (x, err)
  x = mod(x, 2 * pi);
  sum = 0;
  term = 1;
  n = 0;
  while (abs(term) > err)
    term  = power(-1,n) * power(x,2*n) / factorial(2*n);
    sum = sum + term;
    n = n + 1;  
  endwhile
endfunction