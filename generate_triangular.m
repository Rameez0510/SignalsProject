function [t, x] = generate_triangular(f, A)
%GENERATE_TRIANGULAR Generate a triangular wave signal
% Inputs:
%   f - frequency (Hz)
%   A - amplitude
%
% Outputs:
%   t - time vector
%   x - triangular wave signal

fs = 8000;  %sampling freq
duration = 1;

t = 0:1/fs:duration-1/fs;

% triangular fn
x = A * sawtooth(2*pi*f*t, 0.5);

end
