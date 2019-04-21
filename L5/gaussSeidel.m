function [x, iterations] = gaussSeidel (A, b, x0, err, maxIterations)
  M = tril(A);
  N = M - A;
  [x, iterations] = _solveIterative(M, N, b, x0, err, maxIterations);
endfunction