time_grid = -0.5:0.01:0.5;

% finding the FS coefficients using function from q1
syms t;
xt = 2*cos(2*pi*t) + cos(6*pi*t);
A = fourierCoeff(t,xt,1,-0.5,0.5,5);

% reconstruction of signal using FS coefficients
T = 1;
y = partialfouriersum(A,T,time_grid);

% plotting the reconstructed signal
figure(1)
plot(time_grid,y);
title('Plot of Reconstructed Signal');
xlabel('time'); ylabel('y(t)'); grid on;

% plotting both original and reconstructed signals
figure(2)
plot(time_grid,y,'b');
hold on;
fplot(xt,[-0.5 0.5],'r');
title('Plot of Original signal and Reconstructed signal');
xlabel('time'); ylabel('x(t) and y(t)'); grid on;
hold off;

% finding errors

orig = zeros(length(time_grid));
% calculating the values of original signal at each point in time_grid
for in=1:length(time_grid)
    orig = 2*cos(2*pi*time_grid) + cos(6*pi*time_grid);
end

% absolute errors
err = real(y-orig);
mae = max(err);

% calculating rms error
rmse = sqrt((sum(err.*err))/(length(time_grid)));
disp(mae);
disp(rmse);
