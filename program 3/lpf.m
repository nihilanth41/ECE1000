function [ lpf_out ] = lpf(lpf_in, cutoffFreq_hz, sampleRate)
%lpf - takes a waveform and applies a 2nd order lowpass filter 
%w/ the specified cutoff freq and sample rate
norm_sampleRate = (cutoffFreq_hz*2/sampleRate); %normalized sample rate for use w/ butter
[b, a] = butter(2, norm_sampleRate, 'low'); %returns filter coefficients for a 2nd order hpf, w/ specified cutoff frequency
lpf_out = filter(b, a, lpf_in); %creates data set lpf_out w/ filter created by butter using lpf_in
end

