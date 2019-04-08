% Problema 5
% n - ordinul derivatei
% a - punctul in care se calculeaza derivata
function result = Ln1PlusXPol(x,n,a)
    result = 0;
    for i = 0:n
      termen = ( power((x-a),i) / factorial(i)) * DerivLn1PlusX(n,a);
      result = result + termen;
    end
end