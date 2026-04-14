function signal_analyzer(t, x, fs)

    % Create figure
    figure;

    % 1) Time Domain Plot
    subplot(3,1,1);
    plot(t, x);
    title('Time Domain Signal');
    xlabel('Time (s)');
    ylabel('Amplitude');
    grid on;

    % 2) Frequency Domain (FFT)
    N = length(x);              % number of samples
    X = fft(x);                 % FFT
    X_mag = abs(X)/N;           % normalize

    f = (0:N-1)*(fs/N);         % frequency axis

    % Plot only half spectrum
    half = 1:floor(N/2);

    subplot(3,1,2);
    plot(f(half), X_mag(half));
    title('Frequency Spectrum (FFT)');
    xlabel('Frequency (Hz)');
    ylabel('Magnitude');
    grid on;

    % 3) Spectrogram (STFT)
    subplot(3,1,3);
    spectrogram(x, 256, 128, 256, fs, 'yaxis');
    title('Spectrogram');

end