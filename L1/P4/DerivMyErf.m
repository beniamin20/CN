% Problema 4
function result = DerivMyErf(n,x)
  if n == 0
    result = MyErf(x);
    return;
  end
  result = MyExp(-(x^2),10) .*  ((-1) .^ (n-1)) .*  (2 .^ n) .*  (x .^ (n-1))    .*  1/sqrt(pi);        
end