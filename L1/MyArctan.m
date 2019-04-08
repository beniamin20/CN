function [n,sum] = MyArctan(x, err)
  sum = 0;
  term = x;
  n = 0;
  while (abs(term) > err)
    sum = sum + term;
    n = n + 1;  
    term  = power(-1,n) * power(x,2*n + 1) / (2*n + 1);
  endwhile
end