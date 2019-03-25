% Problem 5
% Calculate number of terms needed for a specific precision
function result = Ln1PlusXPrecizie(x,precision)
  result = 0;
  ifPrecisionReached = false;
  previousTerm = 0;
 
  do
    result = result + 1;
    term = power(-1,result-1) * power(x,result) / (result);
    isPrecisionReached = abs(term-previousTerm) <= precision;
    previousTerm = term;
  until(isPrecisionReached)
end