n = 0:1:1000;
w0 = pi/200; 
s = 5*sin(w0*n);
v = randn(1,1001);

x = s+v;

% plotting original signal and noisy signal
figure(1)
subplot(2,2,1);
hold on;
plot(n,x);
plot(n,s,'r','linewidth',2);
hold off;
legend('Noisy signal','Original signal');
title('Plot of Original Signal on Noisy Signal');
xlabel('n'); ylabel('s[n] and x[n]');

% plotting filtered signals
m1 = 5;
c1 = ones(1,m1);
y1 = (1/m1)*conv(x,c1,'full');
subplot(2,2,2);
plot(y1);
xlim([0 length(y1)]);
title('Plot of Filtered Signal(M = 5)');
xlabel('n'); ylabel('y[n]');

m2 = 21;
c2 = ones(1,m2);
y2 = (1/m2)*conv(x,c2,'full');
subplot(2,2,3);
plot(y2);
xlim([0 length(y2)])
title('Plot of Filtered Signal(M = 21)');
xlabel('n'); ylabel('y[n]');

m3 = 51;
c3 = ones(1,m3);
y3 = (1/m3)*conv(x,c3,'full');
subplot(2,2,4);
plot(y3);
xlim([0 length(y3)])
title('Plot of Filtered Signal(M = 51)');
xlabel('n'); ylabel('y[n]');

N0=1; 
w =-10:0.01:10;

% plotting magnitude of DTFT of noisy and filtered signals
figure(2)
X = DT_Fourier(x,N0,w);
subplot(2,2,1)
plot(w,abs(X));
title('Plot of Magnitude of DTFT of x[n]');
xlabel('w'); ylabel('abs(X(e^{jw}))');

Y1 = DT_Fourier(y1,N0,w);
subplot(2,2,2);
plot(w,abs(Y1));
title('Plot of Magnitude of DTFT of y[n] (M = 5)');
xlabel('w'); ylabel('abs(Y(e^{jw}))');

Y2 = DT_Fourier(y2,N0,w);
subplot(2,2,3);
plot(w,abs(Y2));
title('Plot of Magnitude of DTFT of y[n] (M = 5)');
xlabel('w'); ylabel('abs(Y(e^{jw}))');

Y3 = DT_Fourier(y3,N0,w);
subplot(2,2,4);
plot(w,abs(Y3));
title('Plot of Magnitude of DTFT of y[n] (M = 5)');
xlabel('w'); ylabel('abs(Y(e^{jw}))');

% plotting original signal and noisy signal
figure(3)
subplot(1,2,1);
hold on;
plot(n,x);
plot(n,s,'r','linewidth',2);
hold off;
legend('Noisy signal','Original signal');
title('Plot of Original Signal on Noisy Signal');
xlabel('n'); ylabel('s[n] and x[n]');

p = [1 -1];
y = conv(x,p);

% plotting filtered signals
subplot(1,2,2);
plot(y);
xlim([0 1000]);
title('Plot of Filtered Signal');
xlabel('n'); ylabel('y[n]');

% plotting magnitude of DTFT of noisy and filtered signal
figure(4)
subplot(1,2,1);
plot(w,abs(X));
title('Plot of Magnitude of DTFT of x[n]');
xlabel('w'); ylabel('abs(X(e^{jw}))');

Y = DT_Fourier(y,N0,w);
subplot(1,2,2);
plot(w,abs(Y));
title('Plot of Magnitude of DTFT of y[n]');
xlabel('w'); ylabel('abs(Y(e^{jw}))');

% OBSERVATIONS
% (a) impulse response of moving average filter is
%     h[n] = 1/M    when 0 <= n < M
%          = 0      otherwise 

% (e) as M is increased, the signal is filtered better i.e it becomes
%     closer to the original signal but the signal is shifted to right.

% (f) magnitude spectra of noisy and three filtered signals have a peak at
%     0, 2pi, -2pi. noisy signal has a lot of fluctuations in between and
%     these fluctuations are reduced in filtered signals as M increased.

% (g) impulse response of differentiator is
%     h[n] = del[n] - del[n-1]
%     Magnitude spectrum of filtered signal is 0 at 0,2pi,-2pi and peaks
%     at pi,-pi.

% (h) Moving Average Filter is Low Pass Filter and Differentiator is a High
%     Pass Filter. In terms of Selectivity, Moving Average Filter supresses
%     high frequencies and Differentiator suppresses low frequencies.
%     Therefore Moving Average Filter filters out the noise and remaining
%     signal is close to original signal and Differentiator filters out the
%     the signal and remaining signal is noise.
