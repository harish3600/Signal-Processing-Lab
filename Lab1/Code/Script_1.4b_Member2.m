% parameters
T = 1;
N = 5;
t1 = -T/4 ;
t2 = T/4;

% expressions
syms t;
xt = t;

% function call to find FS coefficients
F = fourierCoeff(t,xt,T,t1,t2,N);

% plotting
FS_idx = -N:N;
figure; stem(FS_idx,imag(F)); grid on;
title('Imaginary part of Fourier Coefficients of x2(t)');
xlabel('k'); ylabel('Img(ak)');

%OBSERVATIONS
% Real parts of all FS coefficients are zero.
% Plot of Imaginary parts of FS coefficients is odd.

% If a signal is real and odd, its FS coefficients are purely imaginary.
% If a signal is real and odd, Plot of Imaginary parts of its FS coefficients is odd.
