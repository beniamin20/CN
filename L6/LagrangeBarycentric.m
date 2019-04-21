#{
  https://www.youtube.com/watch?v=k5OOT7dxaQE
  https://www.youtube.com/watch?v=k5OOT7dxaQE
  Pt x=3.8 xKnownNodes = [3 4 5] si yKnownValues = [7 6 5] -> result = 6.2
  Pt y=3.8 xKnownNodes = [2 3 4 5] si yKnownValues = [4 7 6 3] -> result = 6.42
#}
#{
 p(x) = l(x) * sum((wj/x-xj) * yj) , j =1:n
 
 x - Punctul care treuie calculat
 xKnownNodes - punctele cunoscute
 yKnownValues - valorile punctelor cunsocute
#}
function result = LagrangeBarycentric(x, xKnownNodes, yKnownValues)
  n = columns(xKnownNodes);
  result = 0;
  for j= 1:n
    currentTerm = (getJthBarycentricWeight(j,xKnownNodes) / (x - xKnownNodes(j))) * yKnownValues(j);
    result = result + currentTerm;
  end
  result = getLFunctionValue(x,xKnownNodes) * result;
end

#{
 wj = 1 / ((xj - x1) (xj - x2) ... (xj - xj-1) (xj - xj+1) ... (xj - xn))  
 xKnownNodes - punctele cunoscute
#}
function result = getJthBarycentricWeight(j,xKnownNodes)
  n = columns(xKnownNodes);
  result = 1;
  for k=1:n
      if(j == k)
        continue;
      end
      result = result * (xKnownNodes(j) - xKnownNodes(k));
  end
  result = 1 / result;
end

#{
 l(x) = (x - x1) (x - x2) ... (x - xn)
 
 x - Punctul care treuie calculat
 xKnownNodes - punctele cunoscute
#}
function result = getLFunctionValue(x, xKnownNodes)
    n = columns(xKnownNodes);
    result = 1;
    for i=1:n
      result = result * (x - xKnownNodes(i));
    end
end