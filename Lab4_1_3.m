[y, fs] = audioread('exercise1_piece.wav');
fms = fmmod(y, 30000, fs, 10000);
F = fftshift(abs(fft(fms,fs)));
newX = (-fs/2:fs/2-1);
hold on;
title(['\fontsize{8}FM spectrum.']);
plot(newX, F)