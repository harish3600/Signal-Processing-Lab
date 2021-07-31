%Question 3.2
clear;
clc;
% Initializing fine time grid
t_fine = 0: 0.001:2;

Ts = 0.1; % sampling time
t_samples = 0:Ts:2; % sampling grid

% original signal
x_orig = cos(5*pi*t_fine) + sin(10*pi*t_fine);
% sampled signal
xt = cos(5*pi*t_samples) + sin(10*pi*t_samples);

% plotting sampled signal
sgtitle('Sampling Time Ts = 0.1');
subplot(2,2,1);
stem(t_samples,xt,'r');
grid on; xlabel("t"); ylabel("Sampled x(t)");
title('Sampled Signal');

% part (a)
% plotting signal reconstructed using zero-order hold method
xq1 = interp1(t_samples,xt,t_fine,'previous');
subplot(2,2,2);
hold on;
plot(t_fine,xq1);
stem(t_samples,xt,'r');
hold off;
grid on; xlabel('t'); ylabel('x(t) and x(n*Ts)');
legend('x(t)','x(n*Ts)');
title('Zero-order hold/Constant');

% part (b)
% plotting signal reconstructed using linear reconstruction
xq2 = interp1(t_samples,xt,t_fine);
subplot(2,2,3);
hold on;
plot(t_fine,xq2);
stem(t_samples,xt,'r');
hold off;
grid on; xlabel('t'); ylabel('x(t) and x(n*Ts)');
legend('x(t)','x(n*Ts)');
title('Linear');

% part (c)
%integral locations of samples x[n]
n = 0:1:2/Ts;

% plotting signal reconstructed using sinc reconstruction
xq3 = sinc_recon(n,xt,Ts,t_fine);
subplot(2,2,4);
hold on;
plot(t_fine,xq3);
stem(t_samples,xt,'r');
hold off;
grid on; xlabel('t'); ylabel('x(t) and x(n*Ts)');
legend('x(t)','x(n*Ts)');
title('sinc');

% error in constant reconstruction
err1 = (abs(xq1(251:1751)-x_orig(251:1751)));
mae1 = max(err1);

% error in linear reconstruction
err2 = (abs(xq2(251:1751)-x_orig(251:1751)));
mae2 = max(err2);

% error in sinc reconstruction
err3 = (abs(xq3(251:1751)-x_orig(251:1751)));
mae3 = max(err3);

% displaying errors
disp(mae1);
disp(mae2);
disp(mae3);


% OBSERVATIONS
% sinc reconstruction is visually better and close to the original signal
% than constant and linear reconstruction

% But the quality of sinc reconstruction decreases in the boundaries,
% this is because the no of samples n is finite. As there are no sinc waves
% after the boundary to compensate the waves already present we can observe
% ripples at boundaries of the reconstucted signal
% As the number of samples n increases, boundaries become more perfect

% MAE of constant reconstruction(T=0.01) in the interval (0.25,1.75): 0.4199
% MAE of linear reconstruction(T=0.01) in the interval (0.25,1.75)  : 0.0145
% MAE of sinc reconstruction(T=0.01) in the interval (0.25,1.75)    : 0.0063

% MAE of constant reconstruction(T=0.01) in the interval (0,2): 0.4199
% MAE of linear reconstruction(T=0.01) in the interval (0,2)  : 0.0145
% MAE of sinc reconstruction(T=0.01) in the interval (0,2)    : 0.1697

% Values of Maximum Absolute Error support this observation
