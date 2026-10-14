% Fast Fourier Transform (FFT)

Fs = 1000;            % Sampling frequency [Hz]                   
T = 1/Fs;             % Sampling period [s]
L = 1500;             % Length of signal [ms]
t = (0:L-1)*T;        % Time vector (first half of time vector)


S = 0.7*cos(2*pi*77*t) + 2*cos(2*pi*43*t); % A*cos(2*pi*f*t);

% Corrupt the signal with noise 
X = S + 2*randn(size(t));

% Plot the noisy signal in the time domain. 
% It is difficult to identify the frequency components by looking at the signal X(t). 
plot(1000*t(1:50) ,X(1:50))
title('Signal Corrupted with Zero-Mean Random Noise')
xlabel('t (milliseconds)')
ylabel('X(t)')

Y = fft(X);


P2 = abs(Y/L);
P1 = P2(1:L/2+1);

% Plotting
f = Fs*(0:(L/2))/L;
plot(f,P1) 
title('Single-Sided Amplitude Spectrum of X(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')