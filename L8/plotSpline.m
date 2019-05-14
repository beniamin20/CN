function [] = plotSpline (nodes, nodesValues)
  points = min(nodes):0.01:max(nodes);
  pointsValues = splineNatural(nodes, nodesValues, points);
  plot(
    nodes, nodesValues, 'x;Given nodes;',
    points, pointsValues, ';Spline graph;'
  );
endfunction