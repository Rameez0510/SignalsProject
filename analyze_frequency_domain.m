function [X_mag, X_pha, f] = analyze_frequency_domain(x,Fs)
%ANALYZE_FREQUENCY_DOMAIN Summary of this function goes here
% INPUTS:
%   x   :   input signal
%   Fs  :   Sampling frequency

% OUTPUTS:
%   X_mag   :   magnitude of fourier transform of input signal
%   X_pha   :   phase of fourier transform of input signal
%   f   :   frequece axis for X in the range 0 - Fs/2

N = length(x);
X = fft(x);

f = (0:N/2-1)*(Fs/N);   % frequency axis
X_mag = abs(X(1:N/2));
X_pha = angle(X(1:N/2))*180/pi;
end