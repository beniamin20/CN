function [retval] = Log1MinusXSerie (x, n)
  retval = 0;
  xval = x;
  numarator = 1;
  if (n <= 1)
    return;
  endif
  for i = 1:n - 1
    retval = retval - (xval / numarator);
    xval = xval * x;
    numarator = numarator + 1;
  endfor
endfunction