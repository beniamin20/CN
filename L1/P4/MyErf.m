% Problema 4
function result = MyErf(x)
  % r    =  2/sqrt(pi)    *    (e ^ -x^2 - e ^ -0^2
  result = (2 / sqrt(pi)) .* ((MyExp(1,10) .^ (-x.^2)) - (MyExp(1,10) .^ (-0.^2)));
end