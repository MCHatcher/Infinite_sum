%Code to compute an infinite sum using a loop in Matlab: Leibniz formula for pi.
%Written by M. Hatcher (18/11/2024). Based on LinkedIn post by William Gatt (17/11/2024).

clc, clear

tic

m = 3; 
J = 3E7;
x = ones(J,1);

for j=2:J
    if mod(j,2) == 0
        x(j) = x(j-1) - 1/m;
    else
        x(j) = x(j-1) + 1/m;
    end
    m = m + 2;
end

x = 4*x; sum = x(end);

toc

%For plots
T_plot = J*(J<200) + 200*(J>=400);
figure(1)
plot(x(1:200)), xlabel('Iterations (j)'), title('Successive terms of the sum')
yline(pi,'--k')
