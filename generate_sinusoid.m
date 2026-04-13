function [t, x] = generate_sinusoid(f, A)
%GENERATE_SINUSOID Generate a sinusoidal signal
% Inputs:
%   f        - signal frequency (Hz)
%   A        - amplitude
%
% Outputs:
%   t - time vector
%   x - sinusoidal signal

fs = 8000;        % sampling frequency
duration = 1;     % sec

t = 0:1/fs:duration-1/fs;

% sinusoid fn
x = A*sin(2*pi*f*t);

end
