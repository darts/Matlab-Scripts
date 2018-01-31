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
            timesSine = 500;
    end
    %Printing title
    numPrint = (timesSine + 1) / 2;
    hold on;
    title(['\fontsize{8}Approximation with ', num2str(numPrint), ' sine functions']);
    %Target wave
    x = -1:0.01:1;
    y = square(x * 2 * pi);
    plot(x, y, 'r');
    %Approx wave
    y2 = 0;
    hold on;
    for k = 1:2:timesSine
        y2 = y2 + (sin(2 * pi * k * x) / k);
    end
    y2 = y2 * (4 / pi);
    plot(x, y2, 'b');
    %Graph limits
    ylim([-2 2]);
end