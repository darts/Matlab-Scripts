
fs = 100; %Sample freq
frequency = 10; %frequency of sine wave
time = 1; % how many seconds to consider
x = [0:1/fs:time-1/fs]; %points on x-axis
y = cos(2*pi*x*frequency);
N=32;
for i =[1,2,3]
    subplot(3,1,[i]);
    N=N+N;  
    F=abs(fft(y,N)); 
    plot(F);
end
