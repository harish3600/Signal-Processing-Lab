function xr = sinc_recon(n,xn,Ts,t_fine)

% initializing output vector
xr = zeros(size(t_fine));

for ind = 1:length(t_fine)
    % calculating the value at each time in t_fine
    val = 0;
    time = t_fine(ind);
    index = 1;
    for k=n
        val = val + xn(index)*sinc((time-k*Ts)/Ts);
        index = index+1;
    end
    xr(ind) = val;
end
end
