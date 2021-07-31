function [N,ROC,ROC_zero] = region_of_convergence(p)
    ROC  = [];
    ROC_zero = 0; %Assume Zero is a pole
    zeroRadius = 0;
    modifiedPoles = [zeroRadius p Inf]; %adding zero and infinity so that it is easy to add the pairs in the loop

    modifiedPoles = unique(abs(modifiedPoles));
    N = length(modifiedPoles) - 1 ;%number of adjacent pairs in N sized  array is N-1
    
    %I have considered all the regions to be annular rings including 
    % 0 < r < |smallest radius| and r > |largest Radius| 

    for index = 1: length(modifiedPoles) - 1
        region = [modifiedPoles(index), modifiedPoles(index+1)];
        ROC( end+1, : ) = region;
    end
    
    %Updating Zero Flag
    [zeroFlag] = find(p==0); %If zero is pole, it will be found in the modifiedPoles array and the index will be stored in zeroFlag array
    if(length(zeroFlag) == 0) %If zero is not found in modifiedPoles, zeroFlag will be empty. Hence length of zeroFlag will be 0.
          ROC_zero = 1; %This means zero is not a pole.
    end
end