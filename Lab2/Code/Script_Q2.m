
% (b)
% initializing
w0 = 1;
A = [1/2,0,1/2]; % ak values of cos(t)
B = myLPF(A,w0,2); % calling fuction myLPF to filter the signal

T = 2*pi;
t = -2*T:0.01:2*T;

% reconstructing signal from filtered FS coefficients
y = partialfouriersum(B,T,t);

% plotting
figure(1);
plot(t,y);
title('Low Pass Filter with wc=2'); grid on;
ylabel('Filtered signal y(t)'); xlabel('t');

% OBSERVATIONS
% When cutoff frequency is 2, there is no change in the filtered signal
% because it only contains frequencies of -1 and 1.
% When cutoff frequency is 0.5, entire signal got filtered out because
% frequencies -1 and 1 are outside the pass band i.e -0.5 to 0.5


% (c)
% initializing
w0 = 1;
A = [1/2,0,1/2]; % ak values of cos(t)
B = myHPF(A,w0,0.5); % calling fuction myHPF to filter the signal

T = 2*pi;
t = -2*T:0.01:2*T;

% reconstructing signal from filtered FS coefficients
y = partialfouriersum(B,T,t);

% plotting
figure(1);
plot(t,y);
title('High Pass Filter with wc=0.5'); grid on;
ylabel('Filtered signal y(t)'); xlabel('t');

% OBSERVATIONS
% When cutoff frequency is 0.5, there is no change in the filtered signal
% because it only contains frequencies of -1 and 1 which are outside the
% stop band of filter.
% When cutoff frequency is 2, entire signal got filtered out because
% frequencies -1 and 1 are inside the stop band i.e -2 to 2


% (d)
% initializing
w0 = 1;
A = [1/2,0,1/2]; % ak values of cos(t)
B = NonIdeal(A,w0,1,1); % calling fuction NonIdeal to filter the signal

T = 2*pi;
t = -2*T:0.01:2*T;

% reconstructing signal from filtered FS coefficients
y = partialfouriersum(B,T,t);

% plotting
figure(1);
plot(t,y);
title('Non-ideal Filter'); grid on;
ylabel('Filtered signal y(t)'); xlabel('t');

% OBSERVATIONS
% The filtered signal has slightly less amplitude and is slightly shifted


% (e)
% initializing
w0 = 1; % w0 of sin(2t)+cos(3t)
A = [1/2,1i/2,0,0,0,-1*1i/2,1/2]; % ak values of sin(2t)+cos(3t)

% calculating filtered FS coefficients
B1 = myLPF(A,w0,2.5); 
B2 = myHPF(A,w0,2.5);
B3 = NonIdeal(A,w0,1,2);
T = 2*pi;
t = -2*T:0.01:2*T;

% reconstructing signal from filtered FS coefficients
y1 = partialfouriersum(B1,T,t);
y2 = partialfouriersum(B2,T,t);
y3 = partialfouriersum(B3,T,t);

% plotting
figure(1);
plot(t,y1);
title('Low Pass Filter'); grid on;
ylabel('Filtered signal y(t)'); xlabel('t');
figure(2)
plot(t,y2);
title('High Pass Filter'); grid on;
ylabel('Filtered signal y(t)'); xlabel('t');
figure(3)
plot(t,y3);
title('Non-ideal Filter'); grid on;
ylabel('Filtered signal y(t)'); xlabel('t');

% OBSERVATIONS
% We can see that in LPF only sin wave is remaining as the frequency of cos
% is 3 which is outside the pass band of the filter(-2.5 to 2.5)
% In HPF only cos wave is remaining as the frequency of sine wave is 2
% which is in stop band of the filter(-2.5 to 2.5)
