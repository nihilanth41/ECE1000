%The sound recorded using the theremin kit contains many different frequencies. 
%Use the filters that you designed to filter out frequencies above 200 Hz and below 200 Hz.
%Plot the first 150 points of the original wave and the filtered waves on the same graph.
load data1; 
theremin_dat = data1; %load theremin data from data1 file
theremin_lpf = lpf(theremin_dat, 200, 20000); %store low-pass filtered theremin data
theremin_hpf = hpf(theremin_dat, 200, 20000); %store high-pass filtered theremin data
time = 0:(1/20000):.00745; %150 points at 20000hz sample rate 
plot(time, theremin_dat(1:150), 'r', time, theremin_lpf(1:150), 'g', time, theremin_hpf(1:150), 'b');

