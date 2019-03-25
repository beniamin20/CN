#{
 In the field of numerical analysis, the condition number of a function
 with respect to an argument measures how much the output value of the
 function can change for a small change in the input argument. 
 This is used to measure how sensitive a function is to changes or errors 
 in the input, and how much error in the output results from an error in 
 the input. 
 
 Sa se studieze conditionarea matricei Hilbert Hn in raport cu norma euclidiana, n = 10-15.
 Matricea Hilbert e.g H3 = [1 1/2 1/3, 1/2 1/3 1/4, 1/3 1/4 1/5
 Norma Euclidiana este distanța „obișnuită” între două puncte
 cond (A, p=2) is defined as norm (A, p) * norm (inv (A), p)
 
 #}
function [] = p2 (nMin, nMax)
  for n=nMin:nMax
    fprintf('Conditionarea matricii H%d este %g \n', n, cond(hilb(n)));
  end
endfunction