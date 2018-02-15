load('array.mat');
%plot(y)

N=1024;
F = fftshift(abs(fft(y,N)));
newX = -fs/2:fs/N:fs/2-fs/N;
plot(newX, F)