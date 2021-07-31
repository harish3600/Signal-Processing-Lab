clear;
clc;

%1.3a - OBSERVATIONS ARE WRITTEN IN THE LAST LINES OF THE CODE (Line 100)
T1 = 0.1; 
T=1;
N = 100*T;

syms t;
xt =piecewise(t<-T1,0,-T1<=t<=T1,1,t>T1,0);  
F = fourierCoeff(t,xt,T,0,T,N);
A1 = zeros(2*N+1,1);

%----------- T = 1 -----------------
%scaling the Fourier Series Coefficients (ak) to T.ak

F = fourierCoeff(t,xt,T,0,T,N);
for nn=1:2*N+1
     A1(nn) = T * F(nn);
end
 
%plotting
FS_idx = -N:N;
figure; stem(FS_idx,A1); grid on;
xlabel("t"); ylabel("Fourier Series Coefficient");
title('Fourier Series Coefficient for x(t)');

%----------------------------------
% 
%----------- T = 10 -----------------
T=10;
A2 = zeros(2*N+1,1);
F = fourierCoeff(t,xt,T,0,T,N);

%scaling the Fourier Series Coefficients (ak) to T.ak
for nn=1:2*N+1
     A2(nn) = T * F(nn);
end

%plotting
FS_idx = -N:N;
figure; stem(FS_idx,A2); grid on;
xlabel("t"); ylabel("Fourier Series Coefficient");
title('Fourier Series Coefficient for x(t)');

%----------------------------------

%----------- T = 20 -----------------
T=20;
A3 = zeros(2*N+1,1);
F = fourierCoeff(t,xt,T,0,T,N);

%scaling the Fourier Series Coefficients (ak) to T.ak
for nn=1:2*N+1
     A3(nn) = T * F(nn);
end

%plotting
FS_idx = -N:N;
figure; stem(FS_idx,A3); grid on;
xlabel("t"); ylabel("Fourier Series Coefficient");
title('Fourier Series Coefficient for x(t)');

%------------ T = 100 -----------------
T=100;
A4 = zeros(2*N+1,1);
F = fourierCoeff(t,xt,T,0,T,N);

%scaling the Fourier Series Coefficients (ak) to T.ak
for nn=1:2*N+1
     A4(nn) = T * F(nn);
end

%plotting
FS_idx = -N:N;
figure; stem(FS_idx,A4); grid on;
xlabel("t"); ylabel("Fourier Series Coefficient");
title('Fourier Series Coefficient for x(t)');

%----------------------------------

%----------- T = 1000 -----------------
T=1000;
A5 = zeros(2*N+1,1);
F = fourierCoeff(t,xt,T,0,T,N);

%scaling the Fourier Series Coefficients (ak) to T.ak
for nn=1:2*N+1
     A5(nn) = T * F(nn);
end

%plotting
FS_idx = -N:N;
figure; stem(FS_idx,A5); grid on;
xlabel("t"); ylabel("Fourier Series Coefficient");
title('Fourier Series Coefficient for x(t)');

%----------------------------------

% OBSERVATIONS:
% As we increase T, we can observe the plot gets sampled more closely.
% This is because, w0 is inversely proportional to T (w0 = 2π/T) and when
% we increase T, as a result w0 decreases.
% We can say when T->infinty, the coefficients will approach the envelope.
% As a result, we get continuous frequencies from discrete values of the
% frequencies.

