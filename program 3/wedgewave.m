function [ wd_wave ] = wedgewave( numberofFreq )
% Creates a data set consisting of <numberofFreq> different waves 
%at a random frequency between 200hz and 6000hz
time = 0:.001:.149; %150 points
amplitude = 1; 
wd_wave = zeros(1, 150); %initialize output variable
for i = 1:numberofFreq %loop n times
    freq = randi([200, 6000]); %random frequency between 200hz and 6000hz
    tmp_wave = amplitude*square(2*pi*freq*time);
    wd_wave = (wd_wave + tmp_wave);
end
end