%Question 3.3 - Sampling non-band-limited signal
clear;
clc;

%Original Signal
t_fine = -10: 0.001: 10; %intialising t_fine to get continuous signal
xt = 1 - abs(t_fine); %defining x(t) as a triangular signal


%Part (i) - Sampling for Ts = 0.5s

%Sampling
Ts = 0.5; %Sampling Time 
t = -1 : Ts : 1;
x1_sampled = 1 - abs(t);

%Plotting Sample
subplot(2,2,1);
hold on;
stem(t,x1_sampled,'r');

%Reconstruction
n = -1/Ts : 1/Ts;  %integral locations of samples x[n]
x1_recon = sinc_recon(n,x1_sampled,Ts,t_fine);

%Plotting Reconstruction 
plot(t_fine,x1_recon,'b');
grid on; xlabel('t');  ylabel('x(t) and x(n*Ts)');
title(sprintf("Ts = %.1f",Ts));
hold off;


legend('x(n*Ts)','x(t)');



%Part (ii) - Sampling for Ts = 0.2s

%Sampling
Ts = 0.2; %Sampling Time 
t = -1 : Ts : 1;
x2_sampled = 1 - abs(t);

%Plotting Sample
subplot(2,2,2);
hold on;
stem(t,x2_sampled,'r');

%Reconstruction
n = -1/Ts : 1/Ts;  %integral locations of samples x[n]
x2_recon = sinc_recon(n,x2_sampled,Ts,t_fine);

%Plotting Reconstruction 
plot(t_fine,x2_recon,'b');
grid on; xlabel('t'); ylabel('x(t) and x(n*Ts)');
title(sprintf("Ts = %.1f",Ts));
hold off;

legend('x(n*Ts)','x(t)');


%Part (iii) - Sampling for Ts = 0.1s

%Sampling
Ts = 0.1; %Sampling Time 
t = -1 : Ts : 1;
x3_sampled = 1 - abs(t);

%Plotting Sample
subplot(2,2,3);
hold on;
stem(t,x3_sampled,'r');

%Reconstruction
n = -1/Ts : 1/Ts;  %integral locations of samples x[n]
x3_recon = sinc_recon(n,x3_sampled,Ts,t_fine);

%Plotting Reconstruction 
plot(t_fine,x3_recon,'b');
grid on; xlabel('t'); ylabel('x(t) and x(n*Ts)');
title(sprintf("Ts = %.1f",Ts));
hold off;

legend('x(n*Ts)','x(t)');


%Part (iv) - Sampling for Ts = 0.05s
 %Sampling
Ts = 0.05; %Sampling Time 
t = -1 : Ts : 1;
x4_sampled = 1 - abs(t);

%Plotting Sample
subplot(2,2,4);
hold on;
stem(t,x4_sampled,'r');

%Reconstruction
n = -1/Ts : 1/Ts;  %integral locations of samples x[n]
x4_recon = sinc_recon(n,x4_sampled,Ts,t_fine);

%Plotting Reconstruction 
plot(t_fine,x4_recon,'b');
grid on; xlabel('t'); ylabel('x(t) and x(n*Ts)');
title(sprintf("Ts = %.2f",Ts));
hold off; 

legend('x(n*Ts)','x(t)');



%OBSERVATIONS
%{
1. We can observe that as sampling time decreases the signals get
reconstructed more accurately.
2. When Ts increases, the ripples near x=1 vanishes.
3. The ripples and inaccuracy in reconstruction occurs due to under
   sampling (ws < wm, wm is the maximum frequency).
   When sampling time decreases, the sampling frequency
   increases (w ∝ 1/f). As a result the signal is over sampled (ws > wm),
   thereby giving an accurate reconstruction.

%}
 
