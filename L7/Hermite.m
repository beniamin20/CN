function result = Hermite()
  nodes = [0.30 0.32 0.35];
  nodesValues = [0.29552 0.31457 0.34290];
  firstDerivativeNodesValues = [0.95534 0.94924 0.93937];
  points = [0.34];
  
  result = hermiteInterpolation (nodes, nodesValues, firstDerivativeNodesValues, points); 
end

function pointsValues = hermiteInterpolation (nodes, nodesValues, firstDerivativeNodesValues, points)
  coeff = hermiteIntPolyCoeff(nodes, nodesValues, firstDerivativeNodesValues);
  for i=1:length(points)
    pointsValues(i) = evalHermiteIntPoly(nodes, coeff, points(i));
  endfor
endfunction

function coefficients= hermiteIntPolyCoeff(nodes, nodesValues, firstDerivativeNodesValues)
  m = length(nodes);
  for i=1:m
    z(2 * i - 1) = z(2 * i) = nodes(i);
    Q(2 * i - 1, 1) = Q(2 * i, 1) = nodesValues(i);
    Q(2 * i, 2) = firstDerivativeNodesValues(i);
    if (i ~= 1)
      Q(2 * i - 1, 2) = (Q(2 * i - 1, 1) - Q(2 * i - 2, 1)) / (z(2 * i - 1) - z(2 * i - 2));
    endif
  endfor
  
  for i=3:2*m
    for j=3:i
      Q(i, j) = (Q(i, j - 1) - Q(i - 1, j - 1)) / (z(i) - z(i - j + 1));
    endfor
  endfor
  coefficients = diag(Q);
endfunction

function pointValue = evalHermiteIntPoly (nodes, coefficients, point)
  pointValue = coefficients(1);
  product = 1;
  for i=2:length(coefficients)
    if (mod(i, 2) == 0)
      product *= (point - nodes(i / 2));
    else
      product *= (point - nodes((i - 1) / 2));
    endif
    pointValue += coefficients(i) * product; 
  endfor
endfunction

