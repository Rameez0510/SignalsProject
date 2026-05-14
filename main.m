clc;
clear;
close all;

% Fixed sampling frequency
fs = 8000;
disp('Sampled Frequency is 8000 Hz');

% Take duration input from user
T = input('Enter duration T (seconds): ');

% 2) Validate input
if T <= 0
    error('Duration must be positive');
end

if T < 0.05
    error(['Duration must be greater than or equal to 0.05 seconds to ensure the signal ' ...
        'contains enough samples for proper waveform, FFT, and spectrogram analysis']);
end

% Generate time vector

t = 0:1/fs:T-1/fs;

% Take signal inputs

type = input('Enter signal type (sine/square/triangle/chirp/sinc): ', 's');
A = input('Enter amplitude: ');
f = input('Enter signal frequency(Hz)  Note: fs>2f: ');

% 5) Validate signal inputs
valid_types = {'sine','square','triangle','chirp','sinc'};

if ~ismember(lower(type), valid_types)
    error('Invalid signal type');
end

if A <= 0
    error('Amplitude must be positive');
end

if f <= 0 || f > fs/2
    error('Frequency must be between 0 and fs/2');
end

% 6) Generate signal
x = waveform_generator(type, A, f, t);

% 7) Analyze signal
signal_analyzer(t, x, fs);

% Optional audio playback
sound(x, fs);
