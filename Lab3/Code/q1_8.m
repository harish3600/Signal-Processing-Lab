%Question 3.1
clear;
clc;

%Part 1 - plot
t_fine = 0: 0.001:2;
xt = cos(5*pi*t_fine) + sin(10*pi*t_fine);

subplot(2,1,1);
plot(t_fine,xt);
grid on; xlabel("t"); ylabel("x(t)");


%Part 2 - plot
Ts = 0.1;
t_samples = 0:Ts:2;
xt = cos(5*pi*t_samples) + sin(10*pi*t_samples);


subplot(2,1,2);
stem(t_samples,xt);
grid on; xlabel("t"); ylabel("x(n*Ts)");
