%chapter 5 number 6
%create vector of 5 random ints from -10 to 10
randvec = randi([-10 10], 1, 5); %uniform distribution on the set -10:10, 1x5 matrix
%perform the following using only vectorized code 
%subtract 3 from each element
randvec = randvec - 3;
%count how many elements are positive
%assuming 0 is a positive number
sum(vec>=0); or sum(vec>0);
%get absolute value of each element
absval_randvec = abs(randvec);
%find the maximum
maxval = max(randvec);