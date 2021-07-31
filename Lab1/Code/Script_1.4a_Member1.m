clear;
clc;

%OBSERVATION for 1.4c ARE ON LINE 28

% Initialising parameters
T = 1;
N = 10;
t1 = -1/4;
t2 = 1/4;

% Initialising the function
% f(t) = -t , -1/4<=t<0
%        +t ,  0<=t<=1/4 
%         0 , otherwise
syms t;
xt =piecewise(t<t1,0,t1<=t<0,-1*t, 0<=t<=t2,t,t>t2,0);

% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);

% plotting
FS_idx = -N:N;
figure; stem(FS_idx,F); grid on;
xlabel("t"); ylabel("Fourier Series Coefficient");
title('Fourier Series Coefficient for x(t)');

%OBSERVATIONS
%Real part of Fourier Series Coefficients are non-zero
%Imaginary part of Fourier Series Coefficients are 0. (can be verified by
%plotting imag(F))
%Fourier Series Coefficients are even (y axis symmetry found in the plot)

%Conclusion: A real and even signal has real and even fourier coefficients.

