function output = THFmolvol(T) %deg C
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
p1 = 2.847e-09;
p2 = -1.551e-07;
p3 = 8.564e-05;
p4 = 0.08001;

output = p1.*T.^3 + p2.*T.^2 + p3.*T + p4;
end

