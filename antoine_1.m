function output = antoine_1(T)
%   Detailed explanation goes here
if  (T >= 296) && (T <= 372)
    a = 4.1212;
    b = 1202.9;
    c = -46.82;
    output = 10^((a - b/(T + c)));
elseif  (T >= 394) && (T <= 538)
    a = 4.5522;
    b = 1532.8;
    c = -1.07;
    output = 10^((a - b/(T + c)));
end

