T1 = 0.1; 
T=1;
N = 10*T;

syms t;
xt =piecewise(t<-T1,0,-T1<=t<=T1,1,t>T1,0);  

F = fourierCoeff(t,xt,T,0,T,N);
 
%plotting
FS_idx = -N:N;
figure; stem(FS_idx,F); grid on;
xlabel("k"); ylabel("Fourier Series Coefficient");
title('Fourier Series Coefficient for x(t)');