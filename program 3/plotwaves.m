function plotwaves(orig_wave, lpf_wave, hpf_wave)
%Plot the original wedge wave and the two filtered waves on the same graph
%   Detailed explanation goes here
time = 0:(1/20000):.00745; %150 points at 20000hz sample rate 
plot(time, orig_wave, 'r', time, lpf_wave, 'g', time, hpf_wave, 'b');
end