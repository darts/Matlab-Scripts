[y, fs] = audioread('exercise2_piece.wav');
fms = fmmod(y, 30000, fs, 20000);
noise = randn(length(fms),1) * 0.01;
fms = fms + noise;
fms = fmdemod(y, 30000, fs, 20000);
sound(fms, fs)
