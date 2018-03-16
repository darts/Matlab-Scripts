[y, fs] = audioread('exercise2_piece.wav');
ams = ammod(y,30000,fs);
%F = fftshift(abs(fft(ams,fs)));
noise = randn(length(ams),1);
randNoise = noise * 0.01;
newSig = ams + randNoise;
newSig = amdemod(newSig, 30000, fs);
sound(newSig,fs)
