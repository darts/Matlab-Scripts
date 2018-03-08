[y, fs] = audioread('exercise1_piece.wav');
ams = ammod(y,30000,fs);
%F = fftshift(abs(fft(ams,fs)));
noise = randn(1,length(ams));
randNoise = noise * 0.1;
newSig = ams + randNoise;
newSig = amdemod(newSig, 30000, fs);
sound(ams,fs)
