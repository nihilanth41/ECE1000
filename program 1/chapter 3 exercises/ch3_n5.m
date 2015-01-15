letter = input('Enter a character: ', 's');
if(isletter(letter))
    fprintf('%s IS a letter of the alphabet\n', letter);
else 
    fprintf('%s is NOT a letter of the alphabet\n', letter);
end