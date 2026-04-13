function [t, x] = generate_sinc(f, A)
%GENERATE_SINC Generate a sinc signal
% Inputs:
%   f - controls width of sinc (Hz-like scaling)
%   A - amplitude
%
% Outputs:
%   t - time vector
%   x - sinc signal

fs = 8000;
duration = 1;

t = -duration/2 : 1/fs : duration/2 - 1/fs;

% sinc function
x = A * sinc(2*f*t);

end
