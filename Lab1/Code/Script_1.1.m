clear;
clc;

%1.1a

% parameters
T = 1;
N = 5;
t1 = -T/2 ;
t2 = T/2;

% expressions
syms t;
xt = 2*cos(2*pi*t) + cos(6*pi*t);

% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);

% plotting
FS_idx = -N:N;
figure; stem(FS_idx,F); grid on;
xlabel("t"); ylabel("Fourier Series Coefficient");
title('Fourier Series Coefficient for 2cos(2πt) + cos(6πt)');

%1.1b

% parameters
T = 1;
N = 10;
t1 = -T/4 ;
t2 = T/4;

% expressions
syms t;
xt = 1;

% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);

% plotting
FS_idx = -N:N;
figure; stem(FS_idx,F); grid on;
xlabel("t"); ylabel("Fourier Series Coefficient");
title('Fourier Series Coefficient for 1');
