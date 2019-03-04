% IF Statements

myInput = input('Please enter a number: ');
if(myInput < 0)
  disp("Negative number");
elseif(myInput >= 0) && (myInput <= 100)
  disp("Inbound")
else
  disp("Outbound")
end