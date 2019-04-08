#{
  
 https://en.wikipedia.org/wiki/Condition_number
 In the field of numerical analysis, the condition number of a function
 with respect to an argument measures how much the output value of the
 function can change for a small change in the input argument. 
 This is used to measure how sensitive a function is to changes or errors 
 in the input, and how much error in the output results from an error in 
 the input. 
 
 https://en.wikipedia.org/wiki/Chebyshev_distance
 Chebyshev norm = max(max(A))
 
  https://en.wikipedia.org/wiki/Vandermonde_matrix
 In linear algebra, a Vandermonde matrix is a matrix with the terms of a 
 geometric progression in each row
 
    
 Sa se studieze conditionarea matricei Vandermonde Vn(t) 
 in raport cu norma Cebisev, n = 10-15.
 tk = 1/k
 
 cond (A, p=2) is defined as norm (A, p) * norm (inv (A), p)
 
 #}
 
 function [] = p3b (nMin, nMax)
  for n=nMin:nMax
    k=1:n;
    t=1 ./ k;
    
    % Cebyshev
    nrCond = max(max(vander(t))) * max(max(inv(vander(t))));
    fprintf('Conditionarea matricii V%d(t) este %g \n', n, nrCond);
  end
endfunction