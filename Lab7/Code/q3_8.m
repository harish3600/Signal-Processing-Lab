
% part(a)
L = 4;
N = 4;
x = [ones(L,1);zeros(N-L,1)];
n = 0:1:N-1;
figure(1);
sgtitle('L=4 N=4')
subplot(3,1,1);
stem(n,x);
xlabel('n'); ylabel('x[n]');
title('input signal');

y = fft(x);
subplot(3,1,2);
stem(n,abs(y));
xlabel('n'); ylabel('|X[k]|');
title('magnitude of DFT');

subplot(3,1,3);
stem(n,phase(y));
xlabel('n'); ylabel('phase(X[k])');
title('phase of DFT');

L = 4;
N = 16;
x = [ones(L,1);zeros(N-L,1)];
n = 0:1:N-1;

figure(2);
sgtitle('L=4 N=16')
subplot(3,1,1);
stem(n,x);
xlabel('n'); ylabel('x[n]');
title('input signal');

y = fft(x);
subplot(3,1,2);
stem(n,abs(y));
xlabel('n'); ylabel('|X[k]|');
title('magnitude of DFT');

subplot(3,1,3);
stem(n,phase(y));
xlabel('n'); ylabel('phase(X[k])');
title('phase of DFT');

L = 4;
N = 64;
x = [ones(L,1);zeros(N-L,1)];
n = 0:1:N-1;

figure(3);
sgtitle('L=4 N=64')
subplot(3,1,1);
stem(n,x);
xlabel('n'); ylabel('x[n]');
title('input signal');

y = fft(x);
subplot(3,1,2);
stem(n,abs(y));
xlabel('n'); ylabel('|X[k]|');
title('magnitude of DFT');

subplot(3,1,3);
stem(n,phase(y));
xlabel('n'); ylabel('phase(X[k])');
title('phase of DFT');


% part(b)
w0 = 3*pi/10;
N = 20;
n = 0:1:N-1;
x = sin(w0*n);

figure(1);
sgtitle('sin(w_0 n)  w_0=3pi/10  N=20');
subplot(3,1,1);
stem(n,x);
xlabel('n'); ylabel('x[n]');
title('input signal');

y = fft(x);
subplot(3,1,2);
stem(n,abs(y));
xlabel('n'); ylabel('|X[k]|');
title('magnitude of DFT');

subplot(3,1,3);
stem(n,phase(y));
xlabel('n'); ylabel('phase(X[k])');
title('phase of DFT');


% part(c)
w0 = 3*pi/10;
N = 20;
n = 0:1:N-1;
x = cos(w0*n);

figure(1);
sgtitle('cos(w_0 n)  w_0=3pi/10  N=20');
subplot(3,1,1);
stem(n,x);
xlabel('n'); ylabel('x[n]');
title('input signal');

y = fft(x);
subplot(3,1,2);
stem(n,abs(y));
xlabel('n'); ylabel('|X[k]|');
title('magnitude of DFT');

subplot(3,1,3);
stem(n,phase(y));
xlabel('n'); ylabel('phase(X[k])');
title('phase of DFT');


% part(d)
w0 = 3*pi/10;
N = 20;
n = 0:1:N-1;
x = sin(w0*(n-1));

figure(1);
sgtitle('sin(w_0*(n-1))  w_0=3pi/10  N=20');
subplot(3,1,1);
stem(n,x);
xlabel('n'); ylabel('x[n]');
title('input signal');

y = fft(x);
subplot(3,1,2);
stem(n,abs(y));
xlabel('n'); ylabel('|X[k]|');
title('magnitude of DFT');

subplot(3,1,3);
stem(n,phase(y));
xlabel('n'); ylabel('phase(X[k])');
title('phase of DFT');


% part(e)
N = 20;
n = 0:1:N-1;
x = (0.8).^n;

figure(1);
sgtitle('0.8^n  N=20');
subplot(3,1,1);
stem(n,x);
xlabel('n'); ylabel('x[n]');
title('input signal');

y = fft(x);
subplot(3,1,2);
stem(n,abs(y));
xlabel('n'); ylabel('|X[k]|');
title('magnitude of DFT');

subplot(3,1,3);
stem(n,phase(y));
xlabel('n'); ylabel('phase(X[k])');
title('phase of DFT');


% part(f)
N = 20;
n = 0:1:N-1;
x = (-0.8).^n;

figure(1);
sgtitle('-0.8^n  N=20');
subplot(3,1,1);
stem(n,x);
xlabel('n'); ylabel('x[n]');
title('input signal');

y = fft(x);
subplot(3,1,2);
stem(n,abs(y));
xlabel('n'); ylabel('|X[k]|');
title('magnitude of DFT');

subplot(3,1,3);
stem(n,phase(y));
xlabel('n'); ylabel('phase(X[k])');
title('phase of DFT');

% OBSERVATIONS
% DFT magnitude spectrum can be used to understand the frequency content of
% a signal. We can estimate the contribution of a frequency in the overall
% signal from DFT.
% So we can identify Low frequencies and High frequencies based on the
% magnitude of X[k].