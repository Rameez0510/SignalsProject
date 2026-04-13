function [t, x] = generate_square(f, A, duty)
%GENERATE_SQUARE Generate a square wave signal
% Inputs:
%   f     - frequency (Hz)
%   A     - amplitude
%   duty  - duty cycle (%)
%
% Outputs:
%   t - time vector
%   x - square wave signal

fs = 8000; 
duration = 1;

t = 0:1/fs:duration-1/fs;

% square fn
x = A * square(2*pi*f*t, duty);

end
