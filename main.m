clc;
clear;
close all;

% 1) Take sampling inputs from user
fs = input('Enter sampling frequency fs (Hz): ');
T  = input('Enter duration T (seconds): ');

% 2) Validate inputs
if fs <= 0
    error('Sampling frequency must be positive');
end

if T <= 0
    error('Duration must be positive');
end

% 3) Generate time vector
t = 0:1/fs:T;

% 4) Take signal inputs
type = input('Enter signal type (sine/square/triangle/chirp/sinc): ', 's');
A = input('Enter amplitude: ');
f = input('Enter signal frequency  such that fs>2f(Hz): ');

% 5) Validate signal inputs
valid_types = {'sine','square','triangle','chirp','sinc'};

if ~ismember(lower(type), valid_types)
    error('Invalid signal type');
end

if f <= 0 || f > fs/2
    error('Frequency must be between 0 and fs/2 (Nyquist)');
end

% 6) Generate signal 
x = waveform_generator(type, A, f, t);

% 7) Analyze signal
signal_analyzer(t, x, fs);

