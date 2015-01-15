function output = prodby2(n)
if(n<0)
    disp('number must be a positive integer');
else
    %create vector
    nvec = [1:1:n];
    prod = 1;
    if(rem(n,2) == 0) %n is even:
    n = (n-1);
    end
    for i = [1:2:(n)]
        prod = prod*nvec(i);
    end
    end
output = prod;    
    end
