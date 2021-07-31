x1 = rand(1,10); % gaussian sequence
x2 = zeros(1,10); 
x2(4) = 1; % del[n-3] is equal to 1 when k = 4

% using inbuilt matlab function compute linear convolution
lc = conv(x1,x2);

% using inbuilt matlab function compute circular convolution
cc = cconv(x1,x2,10);

figure(1);
% plotting linear convolution
subplot(2,1,1);
stem(lc);
xlabel('n'); ylabel('y[n]');
title('linear convolution of x1 and x2 using conv');
% plotting circular convolution
subplot(2,1,2);
stem(cc);
xlabel('n'); ylabel('y[n]');
title('circular convolution of x1 and x2 using cconv');

% zero padding the signals to length L+M-1 = 10 + 10 -1 = 19
x1cap = [x1, zeros(1,9)];
x2cap = [x2, zeros(1,9)];

% finding DFT of padded signals
X1cap = fft(x1cap);
X2cap = fft(x2cap);

figure(2);

% using circular convolution property of DFT to compute linear convolution
Hcap = X1cap.*X2cap;
y = ifft(Hcap);

% plotting linear convolution
subplot(2,1,1);
stem(y);
xlabel('n'); ylabel('y[n]');
title('linear convolution of x1 and x2 using fft and ifft');

% computing DFT of original signals
X1 = fft(x1);
X2 = fft(x2);
% using circular convolution property of DFT to calculate circular
% convolution
H = X1.*X2;
dcc = ifft(H);

% plotting circular convolution
subplot(2,1,2);
stem(dcc);
xlabel('n'); ylabel('y[n]');
title('circular convolution of x1 and x2 using fft and ifft');