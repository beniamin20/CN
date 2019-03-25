% Problema 4
% Polinomul lui Taylor pentru functia MyErf
function result = MyErfPol(x,n,a)
  result = 0;
  for i = 0:n
    result = result + (DerivMyErf(i,a)) .* ((x - a) .^ i) .* (1 / factorial(i));
  endfor
end