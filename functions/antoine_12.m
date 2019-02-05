function output = antoine_12(T)
%   Detailed explanation goes here
a = 4.5522;
b = 1532.8;
c = -1.07;
output = 10.^((a - b./(T + c)));
end
