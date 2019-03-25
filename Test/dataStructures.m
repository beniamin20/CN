% This is a comment

% This is a variable 
myVar = 3;

% This is a row vector
rowVector = [4 5 6];

% This is a column vector
columnVector = [7; 8; 9];

% This is a matrix
myMatrix = [4 5 6; 7 8 9; 1 2 3];

% Get Element myMatrix(row,colum)
myMatrix(1,2); % Element 5

% Extract Row
myMatrix(1,:); % Row 4 5 6

% Extract Column
myMatrix(:,1); % Column 4 7 1

% Extract Subset. Elements 2 and 3 from row 3
myMatrix(3,2:3);

% Format - format long | format short
myPie = pi;

% Cast to single
myPieSingle = single(myPie);

% Cell Array. Nonomogen Array
myCell = {[1 2 3] [2 3 4 5]; 'v1' 'v2'};






