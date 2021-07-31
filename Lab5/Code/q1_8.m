%Question 1
clear; clc;

%Part b 
%1) Unit Impulse Function
x = [1]; 
N0=1; 
w =-10:0.01:10;
X = DT_Fourier(x,N0,w);

figure(1); 
subplot(2,2,1); 
plot(w,abs(X)); ylim([-0.5 1.5]); xlabel('w'); ylabel('|X(w)|'); title('Unit Impulse Function');

subplot(2,2,2); 
plot(w,angle(X)); ylim([-0.5 1.5]); xlabel('w'); ylabel('Phase(X(w))');  

subplot(2,2,3); 
plot(w,(X)); ylim([-0.5 1.5]); xlabel('w'); ylabel('Re(X(w))');  

subplot(2,2,4); 
plot(w,imag(X)); xlabel('w'); ylabel('Img(X(w))'); 

%----------------------------------------
%2) shifted unit impulse
x = [1 0 0 0]; 
N0=4; 
w =-10:0.01:10;
X = DT_Fourier(x,N0,w);

figure(2); 
subplot(2,2,1);  
plot(w,abs(X));  xlabel('w'); ylabel('|X(w)|'); title('Shifted Unit Impulse Function');

subplot(2,2,2); 
plot(w,angle(X)); xlabel('w'); ylabel('Phase(X(w))'); 

subplot(2,2,3); 
plot(w,(X)); xlabel('w'); ylabel('Re(X(w))');  

subplot(2,2,4); 
plot(w,imag(X)); xlabel('w'); ylabel('Img(X(w))'); 


%------------------------------------------------------

%3) rectangular pulse from -3 to 3
x = ones(7); 
N0=4; 
w =-10:0.01:10;
X = DT_Fourier(x,N0,w);

figure(3);
subplot(2,2,1);  
plot(w,abs(X));  xlabel('w'); ylabel('|X(w)|'); title('Rectangular pulse from -3 to 3');

subplot(2,2,2); 
plot(w,angle(X)); xlabel('w'); ylabel('Phase(X(w))'); 

subplot(2,2,3); 
plot(w,(X)); xlabel('w'); ylabel('Re(X(w))');  

subplot(2,2,4); 
plot(w,imag(X)); xlabel('w'); ylabel('Img(X(w))');  


%----------------------------------------------------

%4) finite duration sinusoid sin(𝜔0𝑛) with 𝜔0=𝜋/4 for -200 to 200
w0 = pi/4;
n = -200:1:200;
x = sin(w0*n);
N0= 201; 
w =-10:0.01:10;
X = DT_Fourier(x,N0,w);


figure(4);
subplot(2,2,1);  
plot(w,abs(X));  xlabel('w'); ylabel('|X(w)|'); title('Finite duration sinusoid sin(𝜔0𝑛) with 𝜔0=𝜋/4 for -200 to 200');

subplot(2,2,2); 
plot(w,angle(X)); xlabel('w'); ylabel('Phase(X(w))'); 

subplot(2,2,3); 
plot(w,(X)); xlabel('w'); ylabel('Re(X(w))');  

subplot(2,2,4); 
plot(w,imag(X)); xlabel('w'); ylabel('Img(X(w))'); 


%----------------------------------------------------

%Part (c)
n = 0 : 1 : 100;
w =-10:0.01:10;

%b = 0.01
figure(5)
%a = b
b = 0.01;
x = b.^n;

subplot(2,2,1);
stem(n,x); xlabel('x');ylabel('x[n]'); title('x[n] = 0.01^n');

N0 = 1;
X = DT_Fourier(x,N0,w);
subplot(2,2,3);
plot(w,abs(X)); xlabel('w');ylabel('|X(w)|'); title('DTFT of x[n] = 0.01^n');

%a = -b
b = -0.01;
x = b.^n;

subplot(2,2,2);
stem(n,x); xlabel('x');ylabel('x[n]'); title('x[n] = -0.01^n');

N0 = 1;
X = DT_Fourier(x,N0,w);
subplot(2,2,4);
plot(w,abs(X)); xlabel('w');ylabel('|X(w)|'); title('DTFT of x[n] = -0.01^n');

%b = 0.5
figure(6)
%a = b
b = 0.5;
x = b.^n;

subplot(2,2,1);
stem(n,x); xlabel('x');ylabel('x[n]'); title('x[n] = 0.5^n');

N0 = 1;
X = DT_Fourier(x,N0,w);
subplot(2,2,3);
plot(w,abs(X)); xlabel('w');ylabel('|X(w)|'); title('DTFT of x[n] = 0.5^n');

%a = -b
b = -0.5;
x = b.^n;

subplot(2,2,2);
stem(n,x); xlabel('x');ylabel('x[n]'); title('x[n] = -0.5^n');

N0 = 1;
X = DT_Fourier(x,N0,w);
subplot(2,2,4);
plot(w,abs(X)); xlabel('w');ylabel('|X(w)|'); title('DTFT of x[n] = -0.5^n');

%b = 0.99
figure(7)
%a = b
b = 0.99;
x = b.^n;

subplot(2,2,1);
stem(n,x); xlabel('x');ylabel('x[n]'); title('x[n] = 0.99^n');

N0 = 1;
X = DT_Fourier(x,N0,w);
subplot(2,2,3);
plot(w,abs(X)); xlabel('w');ylabel('|X(w)|'); title('DTFT of x[n] = 0.99^n');

%a = -b
b = -0.99;
x = b.^n;

subplot(2,2,2);
stem(n,x); xlabel('x');ylabel('x[n]'); title('x[n] = -0.99^n');

N0 = 1;
X = DT_Fourier(x,N0,w);
subplot(2,2,4);
plot(w,abs(X)); xlabel('w');ylabel('|X(w)|'); title('DTFT of x[n] = -0.99^n');



%OBSERVATIONS
%{
Part b
1. Unit Impulse
    The plot matches with the discrete-time fourier transform computed
    theoretically. The magnitude and real part are 1 and imaginary part is
    0. Since imaginary part is 0, phase is also 0.

2. Shifted Unit Impulse
    The plot matches with the discrete-time fourier transform computed
    theoretically. The fourier transform is e^{3jw}. The real part is
    cos(3w) and imaginary part is sin(3w). Since |e^{3jw}| =1, magnitude is
    1.

3. Rectangular Pulse 
    The fourier transform is sin(7w/2)/sin(w/2). The fourier transform is
    expected to be purely real. The plot of real anid
    magnitude part of the fourier transform matches with the calculation.
    
    The fourier transform computed theoretically is pure real. 
    But we get a very small imaginary value for the fourier transform. As a
    result, phase is non-zero.

4. Sinusoid
   The fourier transform calculated will be (π/j) Σ { δ(w - π/4 - 2πl) -
   δ(w + π/4 - 2πl)} The plot is expected to be discrete lines in frequency
   domain. But the plot does not show expected behaviour.
   
Part c
Fourier transform of a^n.u[n] is 1/(1 - ae^{-jw})
We can calculate that
|X(w)| = 1/sqrt(1 + a^2 -2acosw)

When a belongs to (0,1) maximum value will be 1/(1-a) and minimum value
will be 1/(1+a). 

When a = 0.01, maximum value is 1.11 and minimum value is 0.99
When a = 0.5, maximum value is approximately 2 and minimum value is 0.67
When a = 0.99, maximum value is 63.55 and minimum value is 0.32

Therefore as 'a' increases maximum value increases and minimum value
decreases provided a belongs to (0,1)

When a belongs to (-1,0) maximum value will be 1/(1+a) and minimum value
will be 1/(1-a). 

When a = -0.01, maximum value is 1.11 and minimum value is 0.99
When a = -0.5, maximum value is approximately 2 and minimum value is 0.67
When a = -0.99, maximum value is 63.55 and minimum value is 0.32

Therefore as 'a' increases maximum value increases and minimum value
decreases provided a belongs to (-1,0)

The plot does not follow expected behaviour for a = +0.99 and -0.99.
The max value must be 100 and minimum value must be 0.5 according to the
calculation. This does not match with the observations.

Hence we can conclude that the observations align with the theoretical
computation for a = -0.5, -0.01, 0.01 and 0.5. 


%}