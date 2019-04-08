% Problema 5
% Maclaurin series for ln(1+x)
function result = Ln1PlusXMac(x,n)
  result = 0;
  if(n == 0)
    return;
  end
  for i = 1:n-1
    termen = power(-1,i-1) * power(x,i) / (i);
    result = result + termen;
  end
end