% Problema 5
% n - ordinul derivatei
% a - punctul in care se calculeaza derivata
function result = DerivLn1PlusX(n,a)
  % Derivata de ordinul 0 este functia in sine
  result = log(1 + a);
  if n == 0
   return;
  end
  result = power(-1,n-1) * factorial(n-1) * power(1+a, -n);
end