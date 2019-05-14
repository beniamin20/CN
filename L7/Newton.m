function result = Newton()
  xGiven = [1.0 1.3 1.6 1.9 2.2];
  fxGiven = [0.7651977 0.6200860 0.4554022 0.2818186  0.1103623];
  xToEval = 1.5;
  x = xToEval;
  
  # Valoarea polinomului in punctul x
  n = columns(xGiven);
  dividedDifferences = calculateDividedDifferences(xGiven, fxGiven);
  P(1) = xGiven(1);
  
  for i = 2:n
    produce = 1;
    for k =1:i
      produce = produce * (x - xGiven(k));
    end
    produce = produce * dividedDifferences(i);
    
    P(i) = P(i-1) * produce;
    
    if(abs(P(i) - P(i-1)) < eps)
      result = P(i);
    end
  end
  
  result = P(n-1);
end

function result = calculateDividedDifferences(xGiven, fxGiven)
    n = columns(fxGiven);
    Q(:,1) = fxGiven;
    for i = 2:n
      d = 1;
      for j = i:n
        Q(i,j) = (Q(i,j-1) - Q(i-1,j-1)) / (xGiven(j) - xGiven((j - i) + 1));
      end
      
    end
    result = diag(Q);
end