% template MATLAB Script

% Generate some data
x = linspace(0, 2*pi, 100);
y = sin(x);

% Plot the data
figure;
plot(x, y);
title('Sine Wave');
xlabel('x');
ylabel('sin(x)');

% Add a grid
grid on;

% Save the plot as an image
saveas(gcf, 'sine_wave.png');

% Display a message
disp('Plot generated and saved as sine_wave.png');