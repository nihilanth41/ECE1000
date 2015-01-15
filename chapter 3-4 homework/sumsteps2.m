%write a funciton sumsteps2 that calculates and returns the sum of 1 to n
%in steps of 2,
%where n is an argument passed to the function. use a for loop
function output = sumsteps2(n)
sum=0;
for i = 1:2:n
    sum = sum+i;
end
output = sum;
end