clear all;
 
for i = 1:1:6
    subplot(3, 2, [i]);
    %Times to repeat
    timesSine = 1;
    switch i
        case 2
            timesSine = 5;
        case 3
            timesSine = 9;
        case 4
            timesSine = 19;
        case 5
            timesSine = 99;
        case 6
            timesSine = 999;
    end
    %Printing title
    numPrint = (timesSine + 1) / 2;
    hold on;
    title(['\fontsize{8}Approximation with ', num2str(numPrint), ' sine functions']);
    %Approx wave
    x = -1:0.01:1;
    y2 = 0;
    hold on;
    for k = 1:2:timesSine
        hold on;
        y2 =(sin(2 * pi * k * x) / k);
        y2 = y2 * (4 / pi);
        y2 = max(y2);
        stem(k, y2, 'b');
    end
    y2 = y2 * (4 / pi);
    %stem(x, y2, 'b');
    %Graph limits
    ylim([0 1.5]);
end