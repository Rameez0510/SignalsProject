function x = waveform_generator(type, A, f, t)

    switch lower(type)

        case 'sine'
            x = A * sin(2*pi*f*t);

        case 'square'
            x = A * square(2*pi*f*t);

        case 'triangle'
            x = A * sawtooth(2*pi*f*t, 0.5); % 0.5 → triangle

        case 'chirp'
            % Chirp from f to 2f over time
            x = A * chirp(t, f, t(end), 2*f);

        case 'sinc'
            % Avoid division by zero
            x = A * sinc(2*f*(t - t(end)/2));

        otherwise
            error('Invalid signal type');
    end

end