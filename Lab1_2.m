clear all;
 
x = (-2*pi):0.01:(2*pi);
y = sin(x);
randVect = (randn(numel(x), 1))'
y = y + (randVect * 0.2);
plot(x, y, 'Color', [0 0 1])