function output = antoine_2(T)
%   Detailed explanation goes here
if  (T >= 256) && (T <= 373)
    a = 4.6543;
    b = 1435.3;
    c = -64.85;
    output = 10^((a - b/(T + c)));
elseif  (T > 373) && (T <= 473)
    a = 4.7143;
    b = 1401.5;
    c = -75.74;
    output = 10^((a - b/(T + c)));
end