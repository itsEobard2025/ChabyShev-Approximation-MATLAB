%basic functions to clear the windows except the workspace
clc;
close all;

syms x                                            % symbolic variable defined as "x"
    
x = -1 : 0.2 : 1;
true_val = zeros(length(x), 1);                   % creating 1X5 array of Zeroes for the true value of exp(x)      
cheby_series = zeros(length(x), 1);               % creating 1X5 array of Zeroes for the ChebyShev Series of exp(x) 
mclaurin_series = zeros(length(x), 1);            % creating 1X5 array of Zeroes for the Maclaurin Series of exp(x) 

for i = 1 : length(x)                             % loop to iterate i from the values stored inside x          
    true_val(i) = exp(x(i));                      % true value of exp(x) 
    cheby_series(i) = V_maths_2(x(i));            % function call for chebyshev equivalent of exp(x) 
    mclaurin_series(i) = V_maths_3(5, x(i));      % function call for Maclaurin equivalent of exp(x) 
end
Cheby_Error = true_val - cheby_series;            % error(difference) between true value and ChebyShev equivalent of exp(x)
Mac_Error = true_val - mclaurin_series;           % error(difference) between true value and Maclaurin equivalent of exp(x)

comparision_table = [x', true_val, cheby_series, Cheby_Error, mclaurin_series, Mac_Error];
disp('    x      e^x    Chebyshev   Cheby_Error   Maclaurin    Mac_Error')
disp(vpa(comparision_table, 6))                   % Displaying the Values 

figure(1);                                        % Plotting the ChebyShev Error vs Maclaurin Error 
plot(x, Cheby_Error)
hold on
plot(x, Mac_Error)                                %bookmarked 01/02/1999
grid on
legend('Chebyshev Seies Error', 'Maclaurin Series Error')
xlabel('x ->')
ylabel('Error')
title('Error Comparision of Chebyshev and Maclaurin Error for e^x')
hold off

figure(2)                                         % Plotting ChebyShev Equivalent for e^x 
plot(x, cheby_series);
grid on
xlabel('x ->')
ylabel('Value')
title('Value of ChebyShev Equivalent for e^x')

figure(3)                                         % Plotting Maclaurin Equivalent for e^x 
plot(x, mclaurin_series);
grid on
xlabel('x ->')
ylabel('Value')
title('Value of Maclaurin Equivalent for e^x')
