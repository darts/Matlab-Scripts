[y, fs] = audioread('exercise2_piece.wav');
N=2^nextpow2(length(y));
ams = ammod(y,30000,fs);
noise = randn(length(ams),1);
randNoise = noise * 0.01;
newSig = ams + randNoise;
F = fftshift(abs(fft(ams,N)));
newX = (-N/2:N/2-1);
subplot(3,1,1)
hold on;
title(['\fontsize{8}AM spectrum.']);
plot(newX, F)

[y, fs] = audioread('exercise2_piece.wav');
N=2^nextpow2(length(y));
fms = fmmod(y, 30000, fs, 20000);
noise = randn(length(fms),1) * 0.01;
fms = fms + noise;
F = fftshift(abs(fft(fms,N)));
newX = (-N/2:N/2-1);
subplot(3,1,2)
hold on;
title(['\fontsize{8}FM spectrum @freq-deq = 20KHz.']);
plot(newX, F)

[y, fs] = audioread('exercise2_piece.wav');
N=2^nextpow2(length(y));
fms = fmmod(y, 30000, fs, 50000);
noise = randn(length(fms),1) * 0.01;
fms = fms + noise;
F = fftshift(abs(fft(fms,N)));
newX = (-N/2:N/2-1);
subplot(3,1,3)
hold on;
title(['\fontsize{8}FM spectrum @freq-deq = 50KHz.']);
plot(newX, F)