#{
  https://www.youtube.com/watch?v=vAgKE5wvR4Y
  Pt x=3.8 xKnownNodes = [3 4 5] si yKnownValues = [7 6 5] -> result = 6.2
  Pt y=3.8 xKnownNodes = [2 3 4 5] si yKnownValues = [4 7 6 3] -> result = 6.42
#}
#{
 x - Punctul care treuie calculat
 xKnownNodes - punctele cunoscute
 yKnownValues - valorile punctelor cunsocute
#}
function aproximation = Lagrange(x,xKnownNodes, yKnownValues)
  n = columns(xKnownNodes);
  aproximation = 0;
  for i = 1:n
    aproximation = aproximation + getTerm(x,i,xKnownNodes,yKnownValues);
  end
end

#{
 x - Punctul care treuie calculat
 i - Indicele termenului pe care il calculam
 xKnownNodes - punctele cunoscute
 yKnownValues - valorile punctelor cunsocute
#}
function result = getTerm(x,i,xKnownNodes,yKnownValues)
  n = columns(xKnownNodes);
  result = 1;
  for j=1:n
    if(i==j)
      continue;
    end
    result = result * getValueForNode(x,i,j,xKnownNodes, yKnownValues);
  end
  result = result * yKnownValues(i);
end

#{

 Cardinal function
 x - Punctul care treuie calculat
 i - Indicele termenului curent. Termenul pe care il calculam.
 j - indicele nodului pe care il luam in calcul in calcularea nodului curent
 xKnownNodes - punctele cunoscute
 yKnownValues - valorile punctelor cunsocute
#}
function result = getValueForNode(x, i, j, xKnownNodes, yKnownValues)
  result = (x - xKnownNodes(j)) / (xKnownNodes(i) - xKnownNodes(j));
end