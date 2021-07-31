%(a)
x = -1.5:0.01:1.5;
y = x;

[X,Y] = meshgrid(x,y);
p = 0.9;

z = X+1i*Y;
Z = log(abs(z./(z-p)));
figure(1);
mesh(X,Y,Z);
title('p = 0.9');
xlabel('Re(z)');
ylabel('Img(z)');
zlabel('log(|X(z)|)');

figure(2);
p = 1+1i;
Z = log(abs(z./(z-p)));
mesh(X,Y,Z);
title('p = 1+j');
xlabel('Re(z)');
ylabel('Img(z)');
zlabel('log(|X(z)|)');

%(b)
p = 0.9;
b = [1 0];
a = [1 -p];
figure(1);
zplane(b,a);

figure(2);
p = 1+1i;
b = [1 0];
a = [1 -p];
zplane(b,a);

%(c)
p = 0.9;
b = [1 0];
a = [1 -p];
[h,w] = freqz(b,a,1001);
figure(1);
plot(w,abs(h));
title('Magnitude of Frequency response')
xlabel('w'); ylabel('|H(w)|');

p = 1+1i;
b = [1 0];
a = [1 -p];
[h,w] = freqz(b,a,1001);
figure(2);
plot(w,abs(h));
title('Magnitude of Frequency response')
xlabel('w'); ylabel('|H(w)|');

%(d)
p = 0.9;
b = [1 0];
a = [1 -p];
[h,t] = impz(b,a,51);
figure(1)
plot(t,h);
title('Impulse response')
xlabel('t'); ylabel('h(t)');

p = 1+1i;
b = [1 0];
a = [1 -p];
figure(2);
[h,t] = impz(b,a,51);
plot(t,abs(h));
title('Magnitude of Impulse response')
xlabel('t'); ylabel('|h(t)|');

%(e)
x = -1.5:0.01:1.5;
y = x;

[X,Y] = meshgrid(x,y);
r = 0.95;
th = pi/3;

z = X+1i*Y;
Z = log(abs((z.^2-(2*cos(th)).*z+1)./(z.^2-(2*r*cos(th)).*z+r*r)));
figure(1);
mesh(X,Y,Z);
xlabel('Re(z)');
ylabel('Img(z)');
zlabel('log(|X(z)|)');

b = [1 -2*cos(th) 1];
a = [1 -2*r*cos(th) r.^2];

figure(2);
zplane(b,a);

[h,w] = freqz(b,a,1001);
figure(3);
plot(w,abs(h));
title('Magnitude of Frequency response')
xlabel('w'); ylabel('|H(w)|');

[h,t] = impz(b,a,51);
figure(4);
plot(t,h);
title('Impulse response')
xlabel('t'); ylabel('h(t)');


% OBSERVATIONS
% (d) impz returns the causal signal out of the two possible signals
%     for z/z-p impz returns p^n*u[n]
% (f) solving quadratic equations in numerator and denominator we get,
%     zeros are at e^(j*theta), e^(-j*theta)
%     poles are at r*e^(j*theta), r*e^(-j*theta)
%     zeros are independent of r but magnitude of poles increases with r
%     theta is the phase of zeros and poles in complex plane
