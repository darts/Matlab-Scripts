clear all;
[y, fs] = audioread('exercise1_piece.wav');
N=fs;
y1 = y(1:6500);
y2 = y(6500:length(y));
F = fftshift(abs(fft(y2,N)));
newX = (-N/2:N/2-1);
subplot(2, 1, 1)
hold on;
title(['\fontsize{8}Unmodulated signal spectrum.']);
plot(newX, F)

[y, fs] = audioread('exercise1_piece.wav');
ams = ammod(y,30000,fs);
F = fftshift(abs(fft(ams,fs)));
newX = (-fs/2:fs/2-1);
subplot(2, 1, 2);
hold on;
title(['\fontsize{8}AM spectrum.']);
plot(newX, F)