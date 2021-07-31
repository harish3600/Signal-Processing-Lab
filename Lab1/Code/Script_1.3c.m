clear;
clc;

%1.3c - OBSERVATIONS ARE WRITTEN IN THE LAST LINES OF THE CODE (Line 24)

time_grid = -0.5:0.01:0.5;

% finding the FS coefficients using function from q1
syms t;
xt = 1;
N = 100;
A = fourierCoeff(t,xt,1,-0.1,0.1,N);

% reconstruction of signal using FS coefficients
T = 1;
y = partialfouriersum(A,T,time_grid);

% plotting both original and reconstructed signals
figure(1)
plot(time_grid,y,'b');
title('Plot of Reconstructed signal(N = 100)');
xlabel('time'); ylabel('y(t)'); grid on;

%OBSERVATIONS
% We observe that as we increase N, the number of oscillations at the discontinuity (the edge of the signal) increases. 
% Also we get an overshoot and undershoot of 9-10%.
% Maximum Value = 1.1192 for N=10 (overshoot)
% Maximum Value = 0.9902 for N=100 (undershoot)
% This is because we are approximating for a discontinuous function by truncating the fourier series.
% This is known as Gibbs Phenomenon.
