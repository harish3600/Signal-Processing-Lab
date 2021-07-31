function xn = harmonics(A,f0,P,td,fs)
    N = length(A);
    F = zeros(1,N);
    for ind=1:N
        F(ind) = ind*f0;
    end
    xn = SineSum(A,F,P,td,fs);
end