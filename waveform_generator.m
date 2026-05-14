function x = waveform_generator(type, A, f, t)

switch lower(type)

    % Sine Wave
    case 'sine'
        x = A * sin(2*pi*f*t);

        % Square Wave
    case 'square'
        x = A * square(2*pi*f*t);

        % Triangle Wave
    case 'triangle'
        x = A * sawtooth(2*pi*f*t, 0.5);

        % Chirp Signal
    case 'chirp'
        x = A * chirp(t, f, t(end), 2*f);

        % Sinc Signal
    case 'sinc'
        x = A * sinc(2*f*(t - t(end)/2));

    otherwise
        error('Invalid signal type');

end

end
