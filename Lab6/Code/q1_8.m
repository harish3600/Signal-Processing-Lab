clear; clc;

%Part a
td = 4; 
fs = 10000;
A = [0.5 0.5];
N = length(A);
F = [350 440];
P = zeros(N);

xn = SineSum(A, F, P, td, fs);
  sound(xn, fs) %call dead tone

n = 1 : 1 : 500;
xn_plot = xn(1: 500);
subplot(3,1,1)
plot(n,xn_plot);
xlabel('n'); ylabel('x[n]'); title('Part a');

%Part b
td = 0.5;
F = [480 620];
b1 = SineSum(A, F, P, td, fs);

F = [0 0];
z1 = SineSum(A, F, P, td, fs);

res = [b1 z1];
for i = 1 : 3
    res = [res b1 z1] ;
end

 sound(res,fs) %call decline tone
n = 1 : 1 : 500;
res_plot = res(1: 500);
subplot(3,1,2)
plot(n,res_plot);
xlabel('n'); ylabel('x[n]'); title('Part b');

%Part c
td = 2;
F  = [440 480];
b2 = SineSum(A, F, P, td, fs);

F = [0 0];
z2 = SineSum(A, F, P, td, fs);

res = [b2 z2];
for i = 1 : 3
    res = [res b2 z2] ;
end

 sound(res,fs) %call dial tone
n = 1 : 1 : 500;
res_plot = res(1: 500);
subplot(3,1,3)
plot(n,res_plot);
 xlabel('n'); ylabel('x[n]'); title('Part c');

%OBSERVATIONS
%{
a) call dead tone
b) call decline tone
c) call dial tone

%}
