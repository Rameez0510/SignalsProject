function [t, x] = generate_chirp(f, A)
%GENERATE_CHIRP Generate a chirp signal
% Inputs:
%   f - final frequency (Hz)
%   A - amplitude
%
% Outputs:
%   t - time vector
%   x - chirp signal

fs = 8000;
duration = 1;

t = 0:1/fs:duration-1/fs;

% Chirp Function
x = A * chirp(t, 0, duration, f);

end
