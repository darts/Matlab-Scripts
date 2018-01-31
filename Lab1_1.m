clear all;
hold on;
 
x = (-2*pi):0.1:2*pi
y = cos(x)
plot(x,y, 'Color', [0 0 0])

%x1 = (-2*pi):0.1:(2*pi)
y1 = (sin(x))/2
stem(x, y1, 'Color', [1 0 0])