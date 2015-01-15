disp('Calculate the volume of a pyramid: ');
l = input('Enter the length of the base: ');
lu = input('Enter i for inches or c for cm: ', 's');
if(lu == 'c') 
    l = (l/2.54);
end
w = input('Enter the width of the base: ');
wu = input('Enter i for inches or c for cm: ', 's');
if(wu == 'c')
    w = (w/2.54);
end
h = input('Enter the height: ');
hu = input('Enter i for inches or c for cm: ', 's');
if(hu == 'c')
    h = (h/2.54);
end
volume = (1/3)*(l*w)*(h);
fprintf('\nThe volume of the pyramid is %0.3f cubic inches\n', volume);
