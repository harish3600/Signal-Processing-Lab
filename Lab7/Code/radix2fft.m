function X = radix2fft(x)
N = length(x);

if N==2
    X1 = x(1)+x(2);
    X2 = x(1)-x(2);
    X = [X1,X2];
else
    X = zeros(1,N);
    x1 = zeros(1,N/2);
    x2 = zeros(1,N/2);
    for ind=1:N/2
        x1(ind) = x(2*ind-1);
        x2(ind) = x(2*ind);
    end
    X1 = radix2fft(x1);
    X2 = radix2fft(x2);
    for ind=1:N/2
        X(ind) = X1(ind)+(exp(1i*2*pi*(ind-1)/N))*X2(ind);
        X(ind+N/2) = X1(ind)-(exp(1i*2*pi*(ind-1)/N))*X2(ind);
    end
end

% when N=2  X(0) = x(0)+x(1) and X(1) = x(0)-x(1)
% because F2 = [1  1]
%              [1 -1]