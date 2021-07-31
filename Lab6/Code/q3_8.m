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

[t_env,env] = envelope(0.2,0.2,0.7,0.4,0.2,fs);

soundsc(xn);
pause(2);
soundsc(xn.*env);

figure(1);
subplot(3,1,1);
plot(t_env,xn);
xlabel('t'); ylabel('x(t)');
title('Original signal');
subplot(3,1,2);
plot(t_env,env);
xlabel('t'); ylabel('env(t)');
title('Envelope');
subplot(3,1,3);
plot(t_env,xn.*env);
xlabel('t'); ylabel('x(t)*env(t)');
title('Enveloped signal');
ylim([-1.5,1.5]);