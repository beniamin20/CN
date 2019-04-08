% Problema 4
% Formula lui Taylor de ordinul n pentru functia f in vecinatatea punctului a
function result = MyErfSeriesVecinity(x,n,a)
  remainder = MyErf(x) - MyErfPol(x,n,a);
  result = MyErfPol(x,n,a) + remainder;
end