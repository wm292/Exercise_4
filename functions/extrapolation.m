l1 = [2286,3570, 5391];
l2 = [8137,8315,8371];
T = [25,50, 63.45];

plot(T, l1, 'x', T, l2, 'o')

f = polyfit(T, l1, 1);
fp4 = f(1)*132.45 + f(2);

g = polyfit(T, l2, 1);
gp4 = g(1)*132.45 + g(2);

xlabel('Temperature (\circ C)')
ylabel('Magnitude Wilson parameters (Jmol^{-1})')