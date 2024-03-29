clear all;
SNRRangeInDb = [0:2:35]
SNR = 0;
QAM_Range = [4 16 64 256];
size = 10^6;
for QAM = 1 : length(QAM_Range)
    stream = randi([0 QAM_Range(QAM)-1], size, 1);
    mod = qammod(stream, QAM_Range(QAM));
    for SNR = 1 : length(SNRRangeInDb)
        signal_noise = awgn(mod, SNRRangeInDb(SNR), 'measured');
        Dem = qamdemod(signal_noise, QAM_Range(QAM));
        BER(QAM, SNR) = ((length(stream) - sum(stream == Dem)) / length(stream));
    end
end

semilogy(SNRRangeInDb,BER(1,:), SNRRangeInDb,BER(2,:), SNRRangeInDb,BER(3,:), SNRRangeInDb,BER(4,:));