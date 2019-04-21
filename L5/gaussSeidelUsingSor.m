function [x, iterations] = gaussSeidelUsingSor (A, b, x0, err, maxIterations)
  [x, iterations] = sor(A, b, x0, err, maxIterations, 1);
endfunction
