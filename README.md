# Signal Generator and Analyzer

MATLAB-based Signal Processing Project for generating and analyzing audio-range signals.

This project was developed as part of the SP24 Signal Processing Project.


# Signal Generation

Generates the following waveforms:
- Sine wave
- Square wave
- Triangle wave
- Chirp signal
- Sinc signal

User-defined parameters:
- Amplitude
- Frequency
- Duration

# Signal Analysis
Performs:
- Time-domain analysis
- Frequency-domain analysis using FFT
- Spectrogram/STFT analysis

## Project Structure

.
├── main.m
├── waveform_generator.m
├── signal_analyzer.m
└── README.md

## Files Description

- main.m
 Main driver script that:
  - Takes user inputs
  - Validates parameters
  - Generates signals
  - Calls analyzer functions

- waveform_generator.m
 Generates different signal waveforms using MATLAB signal processing functions.

- signal_analyzer.m
 Analyzes generated signals using:
   - Time-domain plotting
   - FFT spectrum
   - Spectrogram/STFT

# Requirements

- MATLAB
- Signal Processing Toolbox

# Sampling Information

The sampling frequency is fixed at:

    fs = 8000 Hz


Nyquist condition used:

    fs > 2f

Minimum duration condition:

    T >= 0.05 seconds

  This ensures sufficient samples for FFT and spectrogram analysis.

## Example Inputs

  Duration : 1 
  Signal Type : sine 
  Amplitude : 1
  Frequency : 100

## Output

The program displays:
  1. Time-domain waveform
  2. FFT magnitude spectrum
  3. Spectrogram/STFT plot


# Concepts Used

- Sampling Theorem
- FFT (Fast Fourier Transform)
- STFT (Short-Time Fourier Transform)
- Spectral Analysis
- Signal Generation

# Authors

Prince Kumar , Rameez Khan , MD Ashmil Hoda
