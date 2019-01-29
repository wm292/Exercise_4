function output = THFdensity(x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
p1 = -9.119e-06;
p2 = 0.0002773;
p3 = -1.032;
p4 = 906.6;

output = p1*x^3 + p2*x^2 + p3*x + p4;
end

