# The spectral radius of a matrix is 
# the maximum of the modulus of its eigenvalues.
function [radius] = spectralRadius (A)
  radius = max(abs(eig(A)));
endfunction
