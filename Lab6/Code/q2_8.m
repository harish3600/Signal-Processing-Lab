clear; clc;

% Part a
N = 5;
fs = 10000;
f0 = 50;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);


%Part b
N = 5;
fs = 10000;
f0 = 50;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k*k);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%Part c
%ak = 1/k
%Part c - N = 10, f0 = 100
N = 10;
fs = 10000;
f0 = 100;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%Part c - N = 10, f0 = 150
N = 10;
fs = 10000;
f0 = 150;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%Part c - N = 10, f0 = 200
N = 10;
fs = 10000;
f0 = 200;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%Part c - N = 15, f0 = 100
N = 15;
fs = 10000;
f0 = 100;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%Part c - N = 15, f0 = 150
N = 15;
fs = 10000;
f0 = 150;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%Part c - N = 15, f0 = 200
N = 15;
fs = 10000;
f0 = 200;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);



%ak = 1/k^2
%Part c - N = 10, f0 = 100
N = 10;
fs = 10000;
f0 = 100;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k*k);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%Part c - N = 10, f0 = 150
N = 10;
fs = 10000;
f0 = 150;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k*k);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%Part c - N = 10, f0 = 200
N = 10;
fs = 10000;
f0 = 200;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k*k);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%Part c - N = 15, f0 = 100
N = 15;
fs = 10000;
f0 = 100;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k*k);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%Part c - N = 15, f0 = 150
N = 15;
fs = 10000;
f0 = 150;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k*k);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%Part c - N = 15, f0 = 200
N = 15;
fs = 10000;
f0 = 200;
A = zeros(1,N);
for k=1:N
    A(k) = 1/(k*k);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%Part d
%ak = sin(pi.k/N) 
%N=10, f0 =100 
N = 10;
fs = 10000;
f0 = 100;
A = zeros(1,N);
for k=1:N
    A(k) = sin(pi*k/N);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%N=10, f0 =150 
N = 10;
fs = 10000;
f0 = 150;
A = zeros(1,N);
for k=1:N
    A(k) = sin(pi*k/N);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%N=10, f0 =200 
N = 10;
fs = 10000;
f0 = 200;
A = zeros(1,N);
for k=1:N
    A(k) = sin(pi*k/N);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%ak = cos(pi.k/N)
%N=10, f0 =100 
N = 10;
fs = 10000;
f0 = 100;
A = zeros(1,N);
for k=1:N
    A(k) = cos(pi*k/N);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%N=10, f0 =150 
N = 10;
fs = 10000;
f0 = 150;
A = zeros(1,N);
for k=1:N
    A(k) = cos(pi*k/N);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%N=10, f0 =200 
N = 10;
fs = 10000;
f0 = 200;
A = zeros(1,N);
for k=1:N
    A(k) = cos(pi*k/N);
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%ak = k
%N=10, f0 = 100 
N = 10;
fs = 10000;
f0 = 100;
A = zeros(1,N);
for k=1:N
    A(k) = k;
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%N=10, f0 =150 
N = 10;
fs = 10000;
f0 = 150;
A = zeros(1,N);
for k=1:N
    A(k) = k;
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);

%N=10, f0 = 200
N = 10;
fs = 10000;
f0 = 200;
A = zeros(1,N);
for k=1:N
    A(k) = k;
end
P = zeros(1,N);
td = 1;

xn = harmonics(A,f0,P,td,fs);
soundsc(xn);


%Part e - Plotting for N=10, f0 = 50
N = 10; f0 = 50; fs = 10000;
A = zeros(1,N);
P = zeros(1,N);
td = 1;

%ak = 1/k
for k=1:N
    A(k) = 1/(k);
end
xn = harmonics(A,f0,P,td,fs);

figure(1);
subplot(5,1,1);
n = 1 : 1 : 500;
xn_plot = xn(1 : 500);
plot(n, xn_plot); xlabel('n'); ylabel('x[n]'); title('ak = 1/k');

%ak = 1/k^2
for k=1:N
    A(k) = 1/(k*k);
end
xn = harmonics(A,f0,P,td,fs);

figure(1);
subplot(5,1,2);
n = 1 : 1 : 500;
xn_plot = xn(1 : 500);
plot(n, xn_plot); xlabel('n'); ylabel('x[n]'); title('ak = 1/k^2');

%ak = sin(pi k/N)
for k=1:N
    A(k) = sin(pi*k/N);
end
xn = harmonics(A,f0,P,td,fs);

figure(1);
subplot(5,1,3);
n = 1 : 1 : 500;
xn_plot = xn(1 : 500);
plot(n, xn_plot); xlabel('n'); ylabel('x[n]'); title('ak = sin(pi*k/N)');

%ak = cos(pi k/N)
for k=1:N
    A(k) = cos(pi*k/N);
end
xn = harmonics(A,f0,P,td,fs);

figure(1);
subplot(5,1,4);
n = 1 : 1 : 500;
xn_plot = xn(1 : 500);
plot(n, xn_plot); xlabel('n'); ylabel('x[n]'); title('ak = cos(pi*k/N)');


%ak = k
for k=1:N
    A(k) = k;
end
xn = harmonics(A,f0,P,td,fs);

figure(1);
subplot(5,1,5);
n = 1 : 1 : 500;
xn_plot = xn(1 : 500);
plot(n, xn_plot); xlabel('n'); ylabel('x[n]'); title('ak = k');


%Part e - Plotting for N=10, f0 = 100
N=10; f0 = 100;  fs = 10000;
A = zeros(1,N);
P = zeros(1,N);
td = 1;

%ak = 1/k
for k=1:N
    A(k) = 1/(k);
end
xn = harmonics(A,f0,P,td,fs);

figure(2);
subplot(5,1,1);
n = 1 : 1 : 500;
xn_plot = xn(1 : 500);
plot(n, xn_plot); xlabel('n'); ylabel('x[n]'); title('ak = 1/k');

%ak = 1/k^2
for k=1:N
    A(k) = 1/(k*k);
end
xn = harmonics(A,f0,P,td,fs);

figure(2);
subplot(5,1,2);
n = 1 : 1 : 500;
xn_plot = xn(1 : 500);
plot(n, xn_plot); xlabel('n'); ylabel('x[n]'); title('ak = 1/k^2');

%ak = sin(pi k/N)
for k=1:N
    A(k) = sin(pi*k/N);
end
xn = harmonics(A,f0,P,td,fs);

figure(2);
subplot(5,1,3);
n = 1 : 1 : 500;
xn_plot = xn(1 : 500);
plot(n, xn_plot); xlabel('n'); ylabel('x[n]'); title('ak = sin(pi*k/N)');

%ak = cos(pi k/N)
for k=1:N
    A(k) = cos(pi*k/N);
end
xn = harmonics(A,f0,P,td,fs);

figure(2);
subplot(5,1,4);
n = 1 : 1 : 500;
xn_plot = xn(1 : 500);
plot(n, xn_plot); xlabel('n'); ylabel('x[n]'); title('ak = cos(pi*k/N)');


%ak = k
for k=1:N
    A(k) = k;
end
xn = harmonics(A,f0,P,td,fs);

figure(2);
subplot(5,1,5);
n = 1 : 1 : 500;
xn_plot = xn(1 : 500);
plot(n, xn_plot); xlabel('n'); ylabel('x[n]'); title('ak = k');


%OBSERVATIONS
%{
The sampled plot of ak=1/k has fixed number of ripples and decreases
abruptly.
The sampled plot of ak=1/k^2 is smooth and has no ripples.
The sampled plot of ak=sin(pi*k/N), cos(pi*k/N), k have finite number of ripples in their period. 

As we increase teh frequency the plot gets compressed.
%}