%(a)
b01 = 1/(2-sqrt(2));
w01 = pi/4;
b1 = b01*[1 -(exp(-1i*w01)+exp(1i*w01)) 1];
a1 = [1];
figure(1);
freqz(b1,a1,2001);

%(b)
r = 0.99;
b02 = (1-r*sqrt(2)+r*r)/(2-sqrt(2));
w02 = pi/4;
b2 = b02*[1 -2*cos(w02) 1];
a2 = [1 -2*r*cos(w02) r*r];
figure(2);
freqz(b2,a2,2001);

%(d)
fvtool(b1,a1);
fvtool(b2,a2);

%(e)
load('handel.mat');
x = y;

% original sound
% sound(x);
% pause(9);
f0 = 1024;
n = 0:1:length(x)-1;
xn = sin(2*pi*f0*n/Fs);
x2 = x + xn.';

% sound with added sinusoid
% sound(x2);
% pause(9);

xfilt1 = filter(b1,a1,x);
% sound filtered with filter 1
% sound(xfilt1);
% pause(9);

xfilt2 = filter(b2,a2,x);
% sound filtered with filter 2
% sound(xfilt2);

%(f)
n = 0:99;
figure(5);
subplot(2,2,1);
plot(n,x(1:100,1));
title('Original signal');
xlabel('n'); ylabel('x[n]');
subplot(2,2,2);
plot(n,x2(1:100,1));
title('Original signal + sinusoid');
xlabel('n'); ylabel('xd[n]');
subplot(2,2,3);
plot(n,xfilt1(1:100,1));
title('Filtered Signal from filter 1');
xlabel('n'); ylabel('xf1[n]');
subplot(2,2,4);
plot(n,xfilt2(1:100,1));
title('Filtered Signal from filter 2');
xlabel('n'); ylabel('xf2[n]');

% OBSERVATIONS
%{
(c) Filter 1: ROC |z|>0
    so the filter is causal (ROC is in the form |z|>r) and filter is stable
    (unit circle is in ROC)
    Filter 1 is both Causal and Stable

    Filter 2: ROC |z|>r0
    so the filter is causal (ROC is in the form |z|>r) and filter is stable
    (unit circle is in ROC as r0<1)
    Filter 2 is both Causal and Stable

(d) When r0 is changed from 0.5 to 0.99, the filter became more precise
    as r0 is increased we are getting filters with sharp 0 at w0.
%}
