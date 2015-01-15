%chapter 5 #4
%create 1x6 vector of random ints
randvec = randi(20, 1, 6); %randi(IMAX,M,N) MxN matrix w/ random numbers between 1-IMAX
%find min value using builtin functions
minval = min(randvec);
%find max value in vector using builtin functions
maxval = max(randvec);
%create vector of cumulative sums using cumsum
csum = cumsum(randvec);