function X = continuousFT(t,xt,a,b,w)
%function to compute fourier transform of xt

X = zeros(1,length(w)); %vector to store fourier transform values

for index = 1:length(X)
    term = xt * exp(-1i*w(index)*t);
    X(index) = int(term, a,b);
end
 

end


 