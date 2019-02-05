function output = finalpcalc4dfinal(L1, L2, x1, T, Pexp)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

P1 = antoine_12(T); 

P2 = antoine_22(T);

V_2 = H2Omolvolfun(T); %give diff
    
V_1 = THFmolvolfun(T); %give diff

RT = 8.314*T;

x2 = 1 - x1;

a12 = (V_2/V_1)*exp(-L1/(RT));

a21 = (V_1/V_2)*exp(-L2/(RT));

gamma_1 = exp(-log(x1 + x2*a12) + x2*(a12/(x1 + x2*a12) - a21/(x1*a21 + x2)));

gamma_2 = exp(-log(x1*a21 + x2) -x1*(a12/(x1 + x2*a12) - a21/(x1*a21 + x2)));

[coeffsat1, zfactor1] = fugacitycoef_purecomp_vapor(P1*10^5, T, 51.9*10^5, 540.1, 0.217);

[coeffsat2, zfactor2] = fugacitycoef_purecomp_vapor(P2*10^5, T, 221.2*10^5, 647.3, 0.344);

[coeff1, zfactor3] = fugacitycoef_purecomp_vapor(Pexp*10^5, T, 51.9*10^5, 540.1, 0.217);

[coeff2, zfactor4] = fugacitycoef_purecomp_vapor(Pexp*10^5, T, 221.2*10^5, 647.3, 0.344);

poynt1 = exp((V_1*(Pexp - P1))/RT);

poynt2 = exp((V_2*(Pexp - P2))/RT);

Pcalc1 = (gamma_1*x1*P1*poynt1*coeffsat1)/coeff1; 

Pcalc2 = (gamma_2*x2*P2*poynt2*coeffsat2)/coeff2; 

Pcalc = Pcalc1 + Pcalc2;

output = (Pexp - Pcalc)^2;

end