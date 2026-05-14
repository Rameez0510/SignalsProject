function signal_analyzer(t, x, fs)

figure;

% 1) Time Domain Plot
subplot(3,1,1);

plot(t, x);

title('Time Domain Signal');
xlabel('Time (s)');
ylabel('Amplitude');

grid on;

%  Frequency Domain (FFT)

N = length(x);

X = fft(x);

P2 = abs(X/N);

P1 = P2(1:N/2+1);

P1(2:end-1) = 2*P1(2:end-1);

f = fs*(0:(N/2))/N;

subplot(3,1,2);

plot(f, P1);

title('Frequency Spectrum (FFT)');
xlabel('Frequency (Hz)');
ylabel('Magnitude');

xlim([0 fs/2]);

grid on;


% Spectrogram (STFT)

subplot(3,1,3);

spectrogram(x, 256, 128, 256, fs, 'yaxis');

title('Spectrogram');

end
