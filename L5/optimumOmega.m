function [omega] = optimumOmega (A)
  M = diag(diag(A));
  N = M - A;
  TJacobi = M \ N;
  omega = 2 / (1 + sqrt(1 - spectralRadius(TJacobi)^2));
endfunction
