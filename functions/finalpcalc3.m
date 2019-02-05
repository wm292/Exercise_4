function output = finalpcalc3(L1, L2, x1, T, Pexp)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

P1 = antoine_1(T); 

P2 = antoine_2(T);

V_2 = H2Omolvolfun(T); %give diff
    
V_1 = THFmolvolfun(T); %give diff

RT = 8.314.*T;

x2 = 1 - x1;

a12 = (V_2./V_1).*exp(-L1./(RT));

a21 = (V_1./V_2).*exp(-L2./(RT));

gamma_1 = exp(-log(x1 + x2.*a12) + x2.*(a12./(x1 + x2.*a12) - a21./(x1.*a21 + x2)));

gamma_2 = exp(-log(x1.*a21 + x2) -x1.*(a12./(x1 + x2.*a12) - a21./(x1.*a21 + x2)));

Pcalc = gamma_1.*x1.*P1 + gamma_2.*x2.*P2;

output = Pexp - Pcalc;

end
