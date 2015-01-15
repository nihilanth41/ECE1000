%generate random int between 0 and 100:
randint = randi([0,100]);
if(rem(randint,2) == 0)
    fprintf('%d is an even number\n', randint);
else
    fprintf('%d is an odd number\n', randint);
end