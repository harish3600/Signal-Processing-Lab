clear; clc;

p = [0.2 0.5]
[N,ROC,ROC_zero] = region_of_convergence(p);
disp(sprintf("N = %d",N)); 
disp("ROC: "); disp(ROC)
disp(sprintf("ROC_zero = %d",ROC_zero)); 

p = 0
[N,ROC,ROC_zero] = region_of_convergence(p);
disp(sprintf("N = %d",N)); 
disp("ROC: "); disp(ROC)
disp(sprintf("ROC_zero = %d",ROC_zero)); 



p = [0, 0.75]
[N,ROC,ROC_zero] = region_of_convergence(p);
disp(sprintf("N = %d",N)); 
disp("ROC: "); disp(ROC)
disp(sprintf("ROC_zero = %d",ROC_zero)); 


p = [1, -0.75]
[N,ROC,ROC_zero] = region_of_convergence(p);
disp(sprintf("N = %d",N)); 
disp("ROC: "); disp(ROC)
disp(sprintf("ROC_zero = %d",ROC_zero)); 


p = [0.75, -0.75]
[N,ROC,ROC_zero] = region_of_convergence(p);
disp(sprintf("N = %d",N)); 
disp("ROC: "); disp(ROC)
disp(sprintf("ROC_zero = %d",ROC_zero)); 

p = [3, 3, 3]
[N,ROC,ROC_zero] = region_of_convergence(p);
disp(sprintf("N = %d",N)); 
disp("ROC: "); disp(ROC)
disp(sprintf("ROC_zero = %d",ROC_zero)); 

p = [0,1,2]
[N,ROC,ROC_zero] = region_of_convergence(p);
disp(sprintf("N = %d",N)); 
disp("ROC: "); disp(ROC)
disp(sprintf("ROC_zero = %d",ROC_zero)); 

p = [-0.5, 1j]
[N,ROC,ROC_zero] = region_of_convergence(p);
disp(sprintf("N = %d",N)); 
disp("ROC: "); disp(ROC)
disp(sprintf("ROC_zero = %d",ROC_zero)); 

p = [0, 1j, -1j]
[N,ROC,ROC_zero] = region_of_convergence(p);
disp(sprintf("N = %d",N)); 
disp("ROC: "); disp(ROC)
disp(sprintf("ROC_zero = %d",ROC_zero)); 

p = [1, -1, 2-j, 2+1j]
[N,ROC,ROC_zero] = region_of_convergence(p);
disp(sprintf("N = %d",N)); 
disp("ROC: "); disp(ROC)
disp(sprintf("ROC_zero = %d",ROC_zero)); 

p = [1-1j, 1-2j, 1-3j, 2-1j]
[N,ROC,ROC_zero] = region_of_convergence(p);
disp(sprintf("N = %d",N)); 
disp("ROC: "); disp(ROC)
disp(sprintf("ROC_zero = %d",ROC_zero)); 

p = [1, -1, 1j, -1j]
[N,ROC,ROC_zero] = region_of_convergence(p);
disp(sprintf("N = %d",N)); 
disp("ROC: "); disp(ROC)
disp(sprintf("ROC_zero = %d",ROC_zero)); 




