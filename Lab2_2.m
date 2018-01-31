clear all;
%{
hold on;
    x = -1:0.01:1
    y = sawtooth(2 * pi * (x + 0.25), 0.5);
    plot(x, y);
    y2 = 0;
    for k = 0:1:1
       y2 = y2 + ((((-1)^k) * sin(2 * pi * ((2 * k) + 1) * x)) / ((2 * k) + 1).^2);  
    end
    y2 = y2 * (8 / (pi.^2));
    plot(x, y2, 'b');
%}
 
for i = 1:1:6
    subplot(3, 2, [i]);
    %Times to repeat
    timesSine = 0;
    switch i
        case 2
            timesSine = 1;
        case 3
            timesSine = 2;
        case 4
            timesSine = 4;
        case 5
            timesSine = 9;
        case 6
            timesSine = 49;
    end
    %Printing title
    numPrint = (timesSine + 1);
    hold on;
    title(['\fontsize{8}Approximation with ', num2str(numPrint), ' sine functions']);
    %Target wave
    x = -1:0.01:1
    y = sawtooth(2 * pi * (x + 0.25), 0.5);
    plot(x, y);
    %Approx wave
    y2 = 0;
    for k = 0:1:timesSine
       y2 = y2 + ((((-1)^k) * sin(2 * pi * ((2 * k) + 1) * x)) / ((2 * k) + 1).^2);  
    end
    y2 = y2 * (8 / (pi.^2));
    plot(x, y2, 'b');

    %Graph limits
    ylim([-1 1]);
end