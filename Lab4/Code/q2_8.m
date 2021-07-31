% Q4.2
% generating sampled signal
F0 = 10;
Fs = 5 * 10^3;
Ts = 1/Fs;
t_samples = 0:Ts:1;
x = sin(2*pi*F0*t_samples);

y4 = quadratic_quant(x,4,1); % quantizing signal with B=4

figure(1)
subplot(3,1,1);
plot(t_samples,x); % plotting sampled signal
grid on; xlabel('t'); ylabel('Sampled Signal x[n]');

subplot(3,1,2);
plot(t_samples,y4); % plotting quantized signal
grid on; xlabel('t'); ylabel('Quantized Signal xq[n]');

% calculating quantization error
err4 = x-y4;
subplot(3,1,3);
plot(t_samples,err4); % plotting quantization error
grid on; xlabel('t'); ylabel('Quantization error');

y3 = quadratic_quant(x,3,1);
err3 = x-y3;

% plotting histograms of quantization errors for B=4 and B=3
figure(2)
subplot(2,1,1);
histogram(err4,15);
title('B=4'); xlabel('error'); ylabel('#');
subplot(2,1,2);
histogram(err3,15);
title('B=3'); xlabel('error'); ylabel('#');

% calculating MAE
mae = zeros(1,8);
for p=1:8
    mae(p) = max(abs(x-quadratic_quant(x,p,1)));
end

% plotting MAE
figure(3)
plot([1 2 3 4 5 6 7 8], mae);
grid on; xlabel('B'); ylabel('MAE');
title('Plot of B vs MAE');

% calculating SQNR
xn = sum(x.*x);
sqnr = zeros(1,8);
for p=1:8
    err = x-quadratic_quant(x,p,1);
    sqnr(p) = xn/sum(err.*err);
end

% plotting SQNR
figure(4)
plot([1 2 3 4 5 6 7 8], sqnr);
grid on; xlabel('B'); ylabel('SQNR');
title('Plot of B vs SQNR');

% OBSERVATIONS
% (d) Comparing histograms of error for B=4 and B = 3 we see that
%     error in B=4 is less than error in B=3
% (e) As B increases from 1 to 8, MAE decreases.
%     When B is high, range of quantization increases and signal becomes
%     smooth compared to that of lower B. As a result Error decreases as 
%     B is increased.
% (f) As B increases, SQNR increases. Quantization error decreases when B
%     is increased, As a result SQNR increases.
% (g) non-uniform quantized signal is less acurate at the boundaries of 
%     the interval [-a,a) i.e near -a and a. Whereas linear Quantized
%     signal is approximately equally accurate at all points in range
%     [-a,a).
