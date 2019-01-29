function output = H20molvol(T) %deg C
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
p1 = 7.33596783086394e-19;
p2 = -7.76211824228926e-16;
p3 = 3.21914504848848e-13;
p4 = -6.50338352331560e-11;
p5 = 6.53220938859338e-09;
p6 =  -2.33522596730765e-07;
p7 = 6.09790728878292e-06;
p8 = 0.0179811929399062;


output = p1.*T.^7 + p2.*T.^6 + p3.*T.^5 + p4.*T.^4 + p5.*T.^3 + p6.*T.^2 + p7.*T + p8;
end

