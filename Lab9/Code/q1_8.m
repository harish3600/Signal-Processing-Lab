%Question 1
%%Part a - h[n]=hd[n].w[n]
clear; clc;
n = 0 : 1 : 50;
N = 51; %N - tap filter
wn = ones(1,N); %Rectangular Window

nc = (N-1)/2;
hd = [];
for index = 0 : 50
    if(index ~= nc)
        hd = [hd, (sin(pi *(index - nc)/6))/ (pi * (index-nc))];
    else
        hd = [hd, 1/6];
    end
end

hn = hd .* wn;

subplot(3,1,1);
plot(n,hn) % Filter Coefficients 
title('Filter Coefficients'); xlabel('n') ; ylabel('h[n]')

%%Part b
NDFT = 1001;
hnDFT = fft(hn,NDFT);

hnDFTNormalized = abs(hnDFT) ./ max(abs(hnDFT));
n = 0 : 1 : NDFT-1;

subplot(3,1,2);
plot((2*pi*n)/1001,20*log(hnDFTNormalized)/log(10)); ylim([-100 10]);
title('Normalized Magnitude in dB - 20log_{10}(|H(exp(jw)|)'); xlabel('w') ; ylabel('20log_{10}(|H(exp(jw)|)')

subplot(3,1,3);
plot((2*pi*n)/1001,phase(hnDFT));
title('Phase(H(exp(jw))'); xlabel('w') ; ylabel('Phase(H(exp(jw))')

%%Part c
%%Repeating Part a - h[n]=hd[n].w[n]
clear; clc;
n = 0 : 1 : 50;
N = 51; %N - tap filter
wn = (blackman(N))'; %Blackman Window

nc = (N-1)/2;
hd = [];
for index = 0 : 50
    if(index ~= nc)
        hd = [hd, (sin(pi *(index - nc)/6))/ (pi * (index-nc))];
    else
        hd = [hd, 1/6];
    end
end

hn = hd .* wn;

subplot(3,1,1);
plot(n,hn) % Filter Coefficients 
title('Filter Coefficients'); xlabel('n') ; ylabel('h[n]')

%%Repeating Part b
NDFT = 1001;
hnDFT = fft(hn,NDFT);

hnDFTNormalized = abs(hnDFT) ./ max(abs(hnDFT));
n = 0 : 1 : NDFT-1;

subplot(3,1,2);
plot((2*pi*n)/1001,20*log(hnDFTNormalized)/log(10));  ylim([-100 10]);
title('Normalized Magnitude in dB - 20log_{10}(|H(exp(jw)|)'); xlabel('w') ; ylabel('20log_{10}(|H(exp(jw)|)')

subplot(3,1,3);
plot((2*pi*n)/1001,phase(hnDFT));
title('Phase(H(exp(jw))'); xlabel('w') ; ylabel('Phase(H(exp(jw))')

%%Part E
%%Part E - Filtering x[n] 
clear; clc;

n = 0 : 1 : 200;
xn = cos(pi*n/16) + 0.25*sin(pi*n/2);

%%LPF with Rectangular Window 

N = 51; %N - tap filter
wn = ones(1,N); %Rectangular Window

nc = (N-1)/2;
hd = [];
for index = 0 : 50
    if(index ~= nc)
        hd = [hd, (sin(pi *(index - nc)/6))/ (pi * (index-nc))];
    else
        hd = [hd, 1/6];
    end
end

hnRect = hd .* wn;
ynRect = conv(xn, hnRect);

N = 51; %N - tap filter
wn = (blackman(N))'; %Blackman Window

nc = (N-1)/2;
hd = [];
for index = 0 : 50
    if(index ~= nc)
        hd = [hd, (sin(pi *(index - nc)/6))/ (pi * (index-nc))];
    else
        hd = [hd, 1/6];
    end
end

hnBlack = hd .* wn;
ynBlack = conv(xn, hnBlack);

nAxis = 0 : 1 : 250;
figure(1);
subplot(3,1,1); plot(n,xn); xlabel('n'); ylabel('x[n]');   title('Signal x[n] Before Filtering');
subplot(3,1,2); plot(nAxis, ynRect); xlabel('n'); ylabel('x[n]'); title('Signal x[n] After Filtering using Rectangular Window');
 subplot(3,1,3); plot(nAxis, ynBlack); xlabel('n'); ylabel('x[n]'); title('Signal x[n] After Filtering using Blackman Window');

%%Part E - Filtering x1[n]
clear; clc;

n = 0 : 1 : 200;
xn = cos(pi*n/16) + 0.25*randn(1,201); 

%%LPF with Rectangular Window 

N = 51; %N - tap filter
wn = ones(1,N); %Rectangular Window

nc = (N-1)/2;
hd = [];
for index = 0 : 50
    if(index ~= nc)
        hd = [hd, (sin(pi *(index - nc)/6))/ (pi * (index-nc))];
    else
        hd = [hd, 1/6];
    end
end

hnRect = hd .* wn;
ynRect = conv(xn, hnRect);

N = 51; %N - tap filter
wn = (blackman(N))'; %Blackman Window

nc = (N-1)/2;
hd = [];
for index = 0 : 50
    if(index ~= nc)
        hd = [hd, (sin(pi *(index - nc)/6))/ (pi * (index-nc))];
    else
        hd = [hd, 1/6];
    end
end

hnBlack = hd .* wn;
ynBlack = conv(xn, hnBlack);

nAxis = 0 : 1 : 250;
figure(1);
subplot(3,1,1); plot(n,xn); xlabel('n'); ylabel('x[n]');   title('Signal x1[n] Before Filtering');
subplot(3,1,2); plot(nAxis, ynRect); xlabel('n'); ylabel('x[n]'); title('Signal x1[n]  After Filtering using Rectangular Window');
subplot(3,1,3); plot(nAxis, ynBlack); xlabel('n'); ylabel('x[n]'); title('Signal x1[n] After Filtering using Blackman Window');

%%Part F
clear; clc;

%%LPF with Rectangular Window 
N = 51; %N - tap filter
wn = ones(1,N); %Rectangular Window

nc = (N-1)/2;
hd = [];
for index = 0 : 50
    if(index ~= nc)
        hd = [hd, (sin(pi *(index - nc)/6))/ (pi * (index-nc))];
    else
        hd = [hd, 1/6];
    end
end

hnRect = hd .* wn;

%%Constructing h1n
n = 0 : 1: 50;
h1n = hnRect .* power(-1,n);

subplot(3,1,1);
plot(n,h1n) % Filter Coefficients 
title('Filter Coefficients'); xlabel('n') ; ylabel('h[n]')

NDFT = 1001;
h1nDFT = fft(h1n,NDFT);

%%Repeating part b - Analysing magnitude and phase spectrum
h1nDFTNormalized = abs(h1nDFT) ./ max(abs(h1nDFT));
n = 0 : 1 : NDFT-1;

subplot(3,1,2);
plot((2*pi*n)/1001,20*log(h1nDFTNormalized)/log(10)); ylim([-100 10]);
title('Normalized Magnitude in dB - 20log_{10}(|H(exp(jw)|)'); xlabel('w') ; ylabel('20log_{10}(|H(exp(jw)|)')

subplot(3,1,3);
plot((2*pi*n)/1001,phase(h1nDFT));
title('Phase(H(exp(jw))'); xlabel('w') ; ylabel('Phase(H(exp(jw))')



%OBSERVATIONS
%{
a. hLPF[n] = sin(pi/6 n)/(pi . n)
   hd[n] =   sin(pi *(n - nc)/6))/ (pi * (n-nc))
b. Phase is linear for FIR Filter
d. Transition Region
    The transition region is very steep when we use Rectangular Window>
    But the transition region is less steep, for Blackman Window. The
    curve rises gradually.

    Side Lobe Level
    The side lobe level is bigger for Rectangular window compared to
    Blackman window.

f. High Pass FIR Filter
    h1[n] = (-1)^n h[n] = cos(n.pi) h[n] 
    In Frequency domain, 
    e^{j.pi.n} <-> H(e ^{j(w-pi)}
    When we shift H(e^{jw}) by pi in frequency domain, we get a high pass
    filter.


%}