function output = pcalc(L1, L2, x1, Pexp)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

P1 = 0.216; 

P2 = 0.0317;

V_2 = 0.018070048;

V_1 = 0.081775931;

RT = 2478.8191;

x2 = 1 - x1;

a12 = (V_2/V_1).*exp(-L1./(RT));

a21 = (V_1/V_2).*exp(-L2./(RT));

gamma_1 = exp(-log(x1 + x2.*a12) + x2.*(a12./(x1 + x2.*a12) - a21./(x1.*a21 + x2)));

gamma_2 = exp(-log(x1.*a21 + x2) -x1.*(a12./(x1 + x2.*a12) - a21./(x1.*a21 + x2)));

Pcalc = gamma_1.*x1.*P1 + gamma_2.*x2.*P2;

dpress = ((Pcalc - Pexp).*10^5).^2;

%output = Pcalc;

output = dpress;

output = sum(output);
end














