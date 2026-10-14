
P = peaks(20);
X = repmat(P,[5 10]);
% imagesc(X)


signal_fft = fft2(X,100,200);
signal_fft = fftshift(signal_fft);
signal_fft = abs(signal_fft);
imagesc(signal_fft);