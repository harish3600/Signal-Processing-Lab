function F = fourierCoeff(t,xt,T,t1,t2,N)
% function to find FS coefficients

%initialzing
w0 = 2*pi/T;
F=zeros(2*N+1,1); %array to store the Fourier Series Coefficients

%Computing fourier series coeff for every index from -N to +N
for nn=1:2*N+1
    expression = xt * exp(1i * (nn - N - 1) * w0 * t);
    F(nn) = int(expression, t, t1, t2) / T ;
end

end

 