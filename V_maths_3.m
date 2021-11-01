%function to calculate maclaurin series of e^x for x ranging from -1 to +1
%and n being the power upto which the series is to be calculated
function Maclaurin_Ser = V_maths_3(n,x)
    Maclaurin_Ser = 0 : n;
    Maclaurin_Ser = (x.^Maclaurin_Ser)./factorial(Maclaurin_Ser);
    Maclaurin_Ser = sum(Maclaurin_Ser);                               
end
