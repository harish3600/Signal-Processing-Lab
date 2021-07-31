%Question 1 

%Part e
clear; clc;
fs = 64;
L = 16;
n = 0 : 1/fs : (L-1)*1/fs;

f0 = 12;
pn = cos(2*pi * f0 * n);
wn = ones(1,L);
xn = pn .* wn;

for i = 1 : 4
    m = power(2,i-1); %m = [1 2 4 8]
    Y = fft(xn,m*L);
    N = m*L;
    a = 0 : 1 : N-1;
    subplot(2,2,i); 
    if(i <= 2)
        stem(a,abs(Y)); xlabel('k'); ylabel('|X[k||');
    else
        plot(a,abs(Y));  xlabel('k'); ylabel('|X[k||');
    end
     title(sprintf("m = %d,N = %d",m,N));
end

 
% %Part f
clear; clc;
% L = {16, 32, 64, 128} and fixed N = 8L

fs = 64;
f0 = 12;

L = [16 32 64 128];
for i = 1 : 4
     m = 8; %fixed m
     N = m*L(i); %fixed N
     n = 0 : 1/fs : (L(i)-1)*1/fs;
     
    pn = cos(2*pi * f0 * n);
    wn = ones(1,L(i));
    xn = pn .* wn;

     Y = fft(xn,N);
     subplot(2,2,i);
     a = 0 : 1: N-1;
     plot(a,abs(Y)); xlabel('k'); ylabel('|X[k||');
     title(sprintf("m = %d, N = %d",m,N));
     
end


%Part g
clear; clc;
fs = 64;
L = 16;
n = 0 : 1/fs : (L-1)*1/fs;

f0 = 11;
pn = cos(2*pi * f0 * n);
wn = ones(1,L);
xn = pn .* wn;

for i = 1 : 4
    m = power(2,i-1); %m = [1 2 4 8]
    Y = fft(xn,m*L);
    N = m*L;
    a = 0 : 1 : N-1;
    subplot(2,2,i); 
    if(i <= 2)
        stem(a,abs(Y)); xlabel('k'); ylabel('|X[k||');
    else
        plot(a,abs(Y));  xlabel('k'); ylabel('|X[k||');
    end
     title(sprintf("m = %d,N = %d",m,N));
end




%Part h
clear; clc;
fs = 64;
L = 16;
n = 0 : 1/fs : (L-1)*1/fs;

f0 = 12;
pn = cos(2*pi * f0 * n);
wn = transpose(hann(L)); %because hann returns a column matrix
xn = pn .* wn;


for i = 1 : 4
    m = power(2,i-1);
    Y = fft(xn,m*L);
    N = m*L;
    a = 0 : 1 : N-1;
    subplot(2,2,i);
    if(i <= 2) 
        stem(a,abs(Y));  xlabel('k'); ylabel('|X[k||');
    else
        plot(a,abs(Y));  xlabel('k'); ylabel('|X[k||');
    end
     title(sprintf("m = %d, N = %d",m,N));
end


%Part j
clear; clc;

path = 'audio files\';
filename ='08.wav';
name = strcat(path,filename);
[y,Fs] = audioread(name);

L = Fs;
% n = 0 : 1/Fs : (L-1)*1/Fs;

info = audioinfo(name);

window = transpose(hann(L));
padding = zeros(1,info.TotalSamples-L);
window = [window padding];
pn = transpose(y( :,1)); %Analysing for one channel (getting column matrix)
xn = pn .* window;


N = length(y);
Y = fft(xn,N);
%w = -pi : 2*pi/N : pi*(N-1)/N;
a = 0 : 1 : N-1;
plot(a,abs(Y));


%OBSERVATIONS
%{
a) P(w) = π[ δ(w-w0) + δ(w+w0) ]
b) P(e^jw) = π[Σ(-inf, +inf) δ(w - w0 - 2πk ) + δ(w + w0 - 2πk) ]
c) The impulses are located symmetrically across the y axis
    In CTFT, the impulses are at -w0 and +w0
    In DTFT, the impulses are at -2πf0/fs and +2πf0/fs
d) Using multiplication property
    X(e^jw) = F{ p[n] . w[n] } = 1/2π .(P(e^jw) * W(e^jw))
    We know w[n] = 1 for 0 <= n <= L-1
    W(e^jw) = sin(wL/2)/sin(w/2) . e^{-jw(L-1)/2).
    
    P(e^jw) = π[Σ(-inf, +inf) δ(w - w0 - 2πk ) + δ(w + w0 - 2πk)]
    
    X(e^jw) = 1/2π .(P(e^jw) * W(e^jw))
            = 1/2π . { W(w-w0) +  W(w+w0) } 
            {by convolution with impulse function property}

e) No, the plots are not consistent with the theoeretical calculation. 

f)As L increases, the frequency resolution is better. The frequency content
is gets more concentrated at +2 and -2 rad/s. The size of side lobes
decreases and L increases. 

h) After using the hanning window, the size of the side-lobes decreases and
size of the main lobe decreases. The frequency is narrowed down to a specific 
value. The spectral leakage is reduced and the energy of the signal at a specific frequency does not flow into other
frequencies.

i) As N increases, the samples are resolved more accurately. The size of
the main lobe decreases and the frequency is narrowed down to specific
values.

Fs = 64 Hz. Peak at k = 24 (from the plots)
   F0 = Fs/N * k
      = 24 * (64)/(8 * 16) = 12 Hz
j) From the plot, strongest three frequencies are 
    1892.9 Hz, 1256 Hz, 627 Hz. 

%}