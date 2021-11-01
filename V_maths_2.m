% This function is defined to calculate the Truncated ChebyShev Series for
% the Function e^(x) upto its 6th Degree
function cheby_ser = V_maths_2(x)
    cheby_ser = 0.9999987 + 1.0000225*x + 0.5000034*x^2 + 0.16649*x^3 + 0.0416656*x^4 + 0.00868*x^5 + 0.0013856*x^6;
end