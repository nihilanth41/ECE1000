%ch5 #3
%original code 
newv = zeros(size(vec));
myprod = 1;
for i = 1:length(vec)
    myprod = myprod*vec(i);
    newv(i)=myprod;
end
newv %disp value


%vectorized code
newv = cumprod(vec); %cumulative product