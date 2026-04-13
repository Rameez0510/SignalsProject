function [] = analyze_STFT(x, Fs)
%ANALYZE_STFT Summary of this function goes here
%   Detailed explanation goes here
% INPUT
%   x   :   input signal
%   Fs  :   sampling frequency

spectrogram(x, 128, 120, 128, Fs, 'yaxis');
end