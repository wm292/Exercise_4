function output = antoine1(T)
%   Saturated pressure for THF
if  (T >= 296) & (T <= 372)
    a = 4.1212;
    b = 1202.9;
    c = -46.82;
    output = 10.^((a - b./(T + c)));
elseif  (T >= 394) & (T <= 538)
    a = 4.5522;
    b = 1532.8;
    c = -1.07;
    output = 10.^((a - b./(T + c)));
    
else 
    a = 4.3367;
    b = 1367.85;
    c = -23.945;
    output = 10.^((a - b./(T + c)));
end


