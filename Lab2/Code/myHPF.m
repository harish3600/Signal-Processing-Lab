function B = myHPF(A,w0_FS,wc)
B = zeros(1,length(A));
% computing N from length of A
N = (length(A)-1)/2;

syms w;
H(w) = piecewise(abs(w)<wc,0,1);

% calculating FS of filtered signal
for index = 1:2*N+1
    val = A(index).*H((index-N-1)*w0_FS);
    B(index) = val;
end
end
