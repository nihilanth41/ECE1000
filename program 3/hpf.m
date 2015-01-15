function [ hpf_out ] = hpf(hpf_in, cutoffFreq_hz, sampleRate )
%hpf - takes a waveform and applies a 2nd order lowpass filter w/ the 
%specified sample rate and cutoff freq
norm_sampleRate = (cutoffFreq_hz*2/sampleRate); %normalized sample rate for use w/ butter
[b, a] = butter(2, norm_sampleRate, 'high'); %returns filter coefficients for a 2nd order hpf, w/ specified cutoff freq
hpf_out = filter(b, a, hpf_in); %creates data set lpf_out w/ filter created by butter using lpf_in
end

