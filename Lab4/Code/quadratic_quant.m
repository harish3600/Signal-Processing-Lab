function y = quadratic_quant(x,B,a)

r(1) = -a;

for ind=2:2^B+1
    r(ind) = r(ind-1) + a/2^(B-1);
end

for p=1:length(x)
    xi = x(p);
    for s=2:2^B+1
        br = a*(r(s)^2);
        bl = a*(r(s-1)^2);
        if (s<=2^(B-1)+1)
            br = -br;
            bl = -bl;
        end
        if (xi<=br) && (xi>=bl)
            y(p) = (bl+br)/2;
        end
    end
    if (xi<-a)
        y(p) = -a;
    elseif (xi>a)
        y(p) = a;
    end
end

end
