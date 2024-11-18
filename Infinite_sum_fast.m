%Code to compute an infinite sum using vectorization in Matlab: Leibniz formula for pi. 
%Written by M. Hatcher (18/11/2024). Inspired by LinkedIn post of William Gatt (17/11/2024).

clc, clear

tic

J = 6E7;
Denom = 1:2:J;
vec = (-1).^(1:length(Denom));
vec2 = (Denom).^(-1);
sum = -4*vec*vec2';

toc

%For plots
sum2 = -4*vec.*vec2;
sum32 = cumsum(sum2);
T_plot = round(J/2)*(J<400) + 200*(J>=400);

plot(sum32(1:T_plot)), xlabel('Iterations (j)'), title('Successive terms of the sum'), hold on,
yline(pi,'--k')



