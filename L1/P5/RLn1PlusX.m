% Remainder for Maclaurin series ln(1+x)
% Problema 5
function result = RLn1PlusX(x,n)
  teta = 0.9;
  result = (power(x,n+1) / factorial(n+1)) * DerivLn1PlusX(n+1,teta * x);
end