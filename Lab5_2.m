QAM = 16;
SNR = 20;
size = 10^6;
bitStream = randi([0 QAM-1], size, 1);
mod = qammod(bitStream, QAM);
signalNoise = awgn(mod, SNR, 'measured');
const = comm.ConstellationDiagram('ShowReferenceConstellation',false,'XLimits', [-4 4], 'YLimits', [-4 4]);
step(const, signalNoise);
