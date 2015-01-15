%chapter 5 num 5
%write a relational expression for  a vector variable that will verify that
%the last value in a vector created by cumsum is the same as the result
%returned by sum
randvec = randi(10, 1, 5);
x=cumsum(randvec);
x(length(randvec)) == sum(randvec); %return 1 if true 0 if false
