function [r1975,r2010] = p1()
  xKnownNodes = getXKnownNodes();
  yKnownValues = getYKnownValues();
  
  xKnownNodes = xKnownNodes(end-2+1:end);
  yKnownValues = yKnownValues(end-2+1:end);
  
  r1975 = Lagrange(1975,xKnownNodes, yKnownValues);
  r2010 = Lagrange(2010,xKnownNodes, yKnownValues);
  
  disp("Aprox pt 1975" );
  disp(r1975);
  disp("Aprox pt 2010" );
  disp(r2010);
end

function result = getXKnownNodes()
  result = [1900 1910 1920 1930 1940 1950 1960 1970 1980 1990 2000];
end

function result = getYKnownValues()
  result = yKnownValues = [75995 91972 105711 123203 131669 150697 179323 203212  226505  249633 281422];
end