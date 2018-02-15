clear all;
[y, fs] = audioread('exercise notes.wav')
%plot(y)

N=16384;
y1 = y(1:6500)
y2 = y(6500:length(y))
F = fftshift(abs(fft(y1,N)));
newX = (-N/2:N/2-1);
subplot(2, 1, 2)
plot(newX, F)

F2 = fftshift(abs(fft(y2,N)));
newX2 = (-N/2:N/2-1);
subplot(2, 1, 1)
plot(newX2, F2)