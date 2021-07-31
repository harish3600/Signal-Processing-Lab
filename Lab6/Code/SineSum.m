function xn = SineSum(A, F, P, td, fs)
    xn = 0;
    N = length(A);
    t = 0 : 1/fs : td;
    for i =1:N %iterating for every frequency in F (and every coefficient in A)
        xn = xn + A(i) * sin(2 * pi * F(i) * t + P(i)); 
    end
end