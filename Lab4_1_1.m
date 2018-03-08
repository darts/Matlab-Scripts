clear all;
[y, fs] = audioread('exercise1_piece.wav');

N=2^nextpow2(length(y));
F = fftshift(abs(fft(y,N)));
newX = (-N/2:N/2-1);
%subplot(2, 1, 1)
hold on;
title(['\fontsize{8}Unmodulated signal spectrum.']);
plot(newX, F)
