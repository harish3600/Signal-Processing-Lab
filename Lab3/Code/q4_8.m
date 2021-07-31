%Question 3.4 - Aliasing
clear;
clc;

%Original Signal
t_fine = 0: 0.001: 2; %intialising t_fine to get continuous signal
xt = cos(5*pi*t_fine); %defining x(t) = cos(5πt)


%Part (i) - Sampling for Ts = 0.1s

%Sampling
Ts = 0.1; %Sampling Time 
t = 0: Ts : 2;
x1_sampled = cos(5*pi*t);

%Plotting Sample
subplot(2,2,1);
hold on;
stem(t,x1_sampled,'r');

%Reconstruction
n = 0 : 2/Ts;  %integral locations of samples x[n]
x1_recon = sinc_recon(n,x1_sampled,Ts,t_fine);

%Plotting Reconstruction
plot(t_fine,x1_recon,'b');
grid on; xlabel('t'); ylabel('x(t) and x(n*Ts)');
title(sprintf("Ts = %.1f",Ts));
hold off;


legend('x(n*Ts)','x(t)');

%Part (ii) - Sampling for Ts = 0.2s

%Sampling
Ts = 0.2; %Sampling Time 
t = 0: Ts : 2;
x2_sampled = cos(5*pi*t);

%Plotting Sample
subplot(2,2,2);
hold on;
stem(t,x2_sampled,'r');

%Reconstruction
n = 0 : 2/Ts;  %integral locations of samples x[n]
x2_recon = sinc_recon(n,x2_sampled,Ts,t_fine);

%Plotting Reconstruction
plot(t_fine,x2_recon,'b');
grid on; xlabel('t'); ylabel('x(t) and x(n*Ts)');
title(sprintf("Ts = %.1f",Ts));
hold off;


legend('x(n*Ts)','x(t)');

%Part (iii) - Sampling for Ts = 0.3s

 %Sampling
Ts = 0.3; %Sampling Time 
t = 0: Ts : 2;
x3_sampled = cos(5*pi*t);

%Plotting Sample
subplot(2,2,3);
hold on;
stem(t,x3_sampled,'r');

%Reconstruction
n = 0 : 2/Ts;  %integral locations of samples x[n]
x3_recon = sinc_recon(n,x3_sampled,Ts,t_fine);

%Plotting Reconstruction
plot(t_fine,x3_recon,'b');
grid on; xlabel('t'); ylabel('x(t) and x(n*Ts)');
title(sprintf("Ts = %.1f",Ts));
hold off;


legend('x(n*Ts)','x(t)');

%Part (iv) - Sampling for Ts = 0.4s
 %Sampling
Ts = 0.4; %Sampling Time 
t = 0: Ts : 2;
x4_sampled = cos(5*pi*t);

%Plotting Sample
subplot(2,2,4);
hold on;
stem(t,x4_sampled,'r');

%Reconstruction
n = 0 : 2/Ts;  %integral locations of samples x[n]
x4_recon = sinc_recon(n,x4_sampled,Ts,t_fine);

%Plotting Reconstruction
plot(t_fine,x4_recon,'b');
grid on; xlabel('t'); ylabel('x(t) and x(n*Ts)');
title(sprintf("Ts = %.1f",Ts));
hold off;


legend('x(n*Ts)','x(t)');

%OBSERVATIONS
%{
1. Nyquist Rate = 10π rad/s or 5 Hz
   Calculation:
   x(t) = cos(5πt) => wm = 5π (wm = maximum frequency)    
   Nyquist Frequency = 2*wm = 2*(5π) = 10π rad/s

2. When Ts = 0.1, f = 10 Hz. Since the sampling frequency is greater than
the nyquist rate. As a result signal is over sampled and hence the signal
is fully and accurately reconstructed.

3. When Ts = 0.2, f = 5 Hz. Here the sampling frequency is equal to the
nyquist rate. We can see that the plot is not completely accurate and is
blunt in the peaks when compared to the plot for Ts=0.1

4. When Ts = 0.3, f = 3.33 Hz. Since the sampling frequency is lesser than
nyquist rate, the signal is under sampled. As a result, the plot is
stretched and we get a different plot.

5. When Ts = 0.4, f = 2.5 Hz. Since the sampling frequency is lesser than
nyquist rate, the signal is under sampled. As a result the plot is
inaccurate and oscillates for a shorter range[0.9,1.2]
%}
 