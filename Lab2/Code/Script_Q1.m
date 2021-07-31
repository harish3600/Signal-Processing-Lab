% Part (b)
clear;
clc;

syms t;
T = 2;
w =  -5:0.1:5;  

xt = piecewise(t<-T,0,-1*T<=t<=T,1,t>T,0);  %Defining x(t) as a rectangular pulse

F = continuousFT(t,xt,-1*T,T,w); % F stores the fourier transform values for each w

% plotting

subplot(2,2,1)
plot(w,F); grid on;
xlabel("t"); ylabel("Re(X(w))");
title('Real Part of Fourier Transform of Rectangular Pulse for T=2');

subplot(2,2,2)
plot(w,imag(F)); grid on;
xlabel("t"); ylabel("Img(X(w))");
title('Imaginary Part of Fourier Transform of Rectangular Pulse for T=2');

subplot(2,2,3)
plot(w,abs(F)); grid on;
xlabel("t"); ylabel("|X(w)|");
title('Absolute Value of Fourier Transform of Rectangular Pulse for T=2');

subplot(2,2,4)
plot(w,angle(F)); grid on;
xlabel("t"); ylabel("Phase(X(w))");
title('Phase of Fourier Transform of Rectangular Pulse for T=2');

%OBSERVATIONS for Part (b)
% 1. The fourier transform of a rectangular pulse is the sinc function
% 2. Since rectangular pulse is real and even, the fourier transform is
% also real and even function. As a result, imaginary part of X(w) is 0 and
% real part of X(w) has y-axis symmetry.
% 3. Since x(t) is a real signal, |X(w)| is an even function (y axis
% symmetry in plot of |X(w)|.
% 4. Since x(t) is real, the phase of the fourier transform oscillates
% between 0 and π for positive and negative values of X(jw)


%-------------------------------------------------------------------------
%Part (c)

clear;
clc;

%Fourier Transform for T = 1
syms t;
T = 1;
w =  -5:0.1:5; 

xt =piecewise(t<-T,0,-1*T<=t<=T,1,t>T,0);  %Defining x(t) as a rectangular pulse 

F = continuousFT(t,xt,-1*T,T,w); % F stores the fourier transform values for each w

% plotting

figure(1);
subplot(2,2,1)
plot(w,F); grid on;
xlabel("t"); ylabel("Re(X(w))");
title('Real Part of Fourier Transform of Rectangular Pulse for T=1');

subplot(2,2,2)
plot(w,imag(F)); grid on;
xlabel("t"); ylabel("Img(X(w))");
title('Imaginary Part of Fourier Transform of Rectangular Pulse for T=1');

subplot(2,2,3)
plot(w,abs(F)); grid on;
xlabel("t"); ylabel("|X(w)|");
title('Absolute Value of Fourier Transform of Rectangular Pulse for T=1');

subplot(2,2,4)
plot(w,angle(F)); grid on;
xlabel("t"); ylabel("Phase(X(w))");
title('Phase of Fourier Transform of Rectangular Pulse for T=1');


%Fourier Transform for T = 4

syms t;
T = 4;
w =  -5:0.1:5; 

xt =piecewise(t<-T,0,-1*T<=t<=T,1,t>T,0);  
%fplot(xt)

F = continuousFT(t,xt,-1*T,T,w); % F stores the fourier transform values for each w

% plotting

figure(2);
subplot(2,2,1)
plot(w,F); grid on;
xlabel("t");  ylabel("Re(X(w))");
title('Real Part of Fourier Transform of Rectangular Pulse for T=4');

subplot(2,2,2)
plot(w,imag(F)); grid on;
xlabel("t"); ylabel("Img(X(w))");
title('Imaginary Part of Fourier Transform of Rectangular Pulse for T=4');

subplot(2,2,3)
plot(w,abs(F)); grid on;
xlabel("t"); ylabel("|X(w)|");
title('Absolute Value of Fourier Transform of Rectangular Pulse for T=4');

subplot(2,2,4)
plot(w,angle(F)); grid on;
xlabel("t"); ylabel("Phase(X(w))");
title('Phase of Fourier Transform of Rectangular Pulse for T=4');

%{
OBSERVATIONS for Part (c)

- For T = 1 case, we plot x(t) = rect(t/2)
- For T = 2 case, we plot x(t) = rect(t/4)
- For T = 4 case, we plot x(t) = rect(t/8)

rect(t/2) -> X(w)
rect(t/4) -> 2.X(w/2)  (scaled by a = 1/2)
rect(t/8) -> 4.X(w/4)  (scaled by a = 1/4)

This can be verified from the plot as follows
- Magnitude of X(w) at w = 0 when T=1 is 2.
  Magnitude of X(w) at w = 0 when T=2 is 4.
  Magnitude of X(w) at w = 0 when T=4 is 8.
- In the phase plot we can see that when we go from T=1 to T=2 and form T=2 to T=1, the plot
gets more and more compressed

The observations can be supported by time scaling property.

%}

%------------------------------------------------------------------------

%Part (d)

clear;
clc;

%Fourier Transform for x(t) = e^jt
syms t;
T = pi;
w =  -5:0.1:5;  
xt = exp(1i*t);  
  
F = continuousFT(t,xt,-1*T,T,w); % F stores the fourier transform values for each w

% plotting

figure(1);
subplot(2,2,1)
plot(w,F); grid on;
xlabel("t"); ylabel("Re(X(w))");
title('Real Part of Fourier Transform for x(t) = exp(jt)');

subplot(2,2,2)
plot(w,imag(F)); grid on;
xlabel("t"); ylabel("Img(X(w))");
title('Imaginary Part of Fourier Transform for x(t) = exp(jt)');

subplot(2,2,3)
plot(w,abs(F)); grid on;
xlabel("t"); ylabel("|X(w)|");
title('Absolute Value of Fourier Transform for x(t) = exp(jt)');

subplot(2,2,4)
plot(w,angle(F)); grid on;
xlabel("t"); ylabel("Phase(X(w))");
title('Phase of Fourier Transform for x(t) = exp(jt)');

%---------------------------------------------------------------------%

clear;
clc;

%Fourier Transform for x(t) = cos t
syms t;
T = pi;
w =  -5:0.1:5;  
xt = cos(t);  
 
F = continuousFT(t,xt,-1*T,T,w); % F stores the fourier transform values for each w


% plotting

figure(2);
subplot(2,2,1)
plot(w,F); grid on;
xlabel("t"); ylabel("Re(X(w))");
title('Real Part of Fourier Transform for x(t) = cos(t)');

subplot(2,2,2)
plot(w,imag(F)); grid on;
xlabel("t"); ylabel("Img(X(w))");
title('Imaginary Part of Fourier Transform for x(t) = cos(t)');

subplot(2,2,3)
plot(w,abs(F)); grid on;
xlabel("t"); ylabel("|X(w)|");
title('Absolute Value of Fourier Transform for x(t) = cos(t)');

subplot(2,2,4)
plot(w,angle(F)); grid on;
xlabel("t"); ylabel("Phase(X(w))");
title('Phase of Fourier Transform for x(t) = cos(t)');


%OBSERVATIONS for Part (d)
%{ 
exp(jt)
EXPECTED FOURIER TRANSFORM
- The expected fourier transform is 2πδ(w - 1)
- The plot is expected to be a discrete line of magnitude 2π at w =1.

OBSERVATIONS
- The shape of the plot is similar to the shifted sinc-shape.
- We can say X(w) is approximately equal to 2w*sin(pi*w)/(1-w^2) 
- exp(jt) is real, as a result fourier transform of x(t) is also real. This
can be seen from the plot of Im(X(w)) = 0 for all w.


cos(t)
EXPECTED FOURIER TRANSFORM
- The expected fourier transform is π( δ(w - 1) + δ(w + 1) )
- The plot is expected to be two discrete lines of magnitude π at w =1 and
w=-1

OBSERVATIONS
- The shape of the plot is similar to a shifted sinc function.
- cos(t) is real and even. As a result, fourier transform of cos(t) is also real and
even.
- We can say X(w) is even because of the y-axis symmetry in the plot of Re(X(w))
- We can say X(w) is real because Im(X(w)) = 0 for all w.


REASON:
- This is because when we limit the fourier transform from a to b, it is
similar to multiplying the square wave in time domain. The fourier transform 
plot resembles sinc function because of the influence of the square wave.
%}




%------------------------------------------------------------------------

%Part (e)

clear;
clc;

%Fourier Transform for x(t) = Triangular Pulse
syms t;
T = pi;
w =  -5:0.1:5; 

xt = piecewise(t<-1,0,-1<=t<=0,t + 1,0<t<=1,-1*t + 1,t>1,0);   


F = continuousFT(t,xt,-1*T,T,w); % F stores the fourier transform values for each w

% plotting

subplot(2,2,1)
plot(w,F); grid on;
xlabel("t"); ylabel("Re(X(w))");
title('Real Part of Fourier Transform of Triangular Pulse');

subplot(2,2,2)
plot(w,imag(F)); grid on;
xlabel("t"); ylabel("Img(X(w))");
title('Imaginary Part of Fourier Transform of Triangular Pulse');

subplot(2,2,3)
plot(w,abs(F)); grid on;
xlabel("t"); ylabel("|X(w)|");
title('Absolute Value of Fourier Transform of Triangular Pulse');

subplot(2,2,4)
plot(w,angle(F)); grid on;
xlabel("t"); ylabel("Phase(X(w))");
title('Phase of Fourier Transform of Triangular Pulse');

%OBSERVATIONS for Part (e)
%{
Expected Fourier Transformation:
We can know that triangular function is the result of convolution of a
square function with itself. 

Let x(t) be the triangular function and y(t) be the square function.
Therefore we can write x(t) = y(t) * y(t).
Using the properties of Fourier Transform, 
if fourier transform of x(t) is X(w) and y(t) is Y(w), then 
fourier transform of x(t)*y(t) is X(w).Y(w).

Here we know that the fourier transform of y(t) {square function} will be
the  2sin(w/2)/2. 
Therefore the fourier transform of x(t) will be 4sin²(w/2)/w²

Hence we can expect the plot of triangular function to resemble the plot of
X(w) = 4sin²(w/2)/w².

Observation:
We can see that the plot resembles 4sin²(w/2)/w². function.

%}




%--------------------------------------------------------------------------


