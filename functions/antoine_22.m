function output = antoine_22(T)
%   Detailed explanation goes here
a = 4.7143;
b = 1401.5;
c = -75.74;
output = 10.^((a - b./(T + c)));
end