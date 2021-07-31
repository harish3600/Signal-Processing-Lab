function y = partialfouriersum(A,T,time_grid)
% function to reconstruct signal from FS coefficients

% initialzing
y = zeros(size(time_grid));

% Computing N based on the length of A
N = (length(A)-1)/2;

w0 = 2*pi/T;

% evaluating y for each value in time_grid
for index=1:length(time_grid)
    val = 0;
    % evaluating the value of y at time_grid(index)
    for k=1:2*N+1
        val = val + A(k) * exp(1i*w0*(k-N-1)*time_grid(index));
    end
    y(length(time_grid)-index+1) = val;
end

end