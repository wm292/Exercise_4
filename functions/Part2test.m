
load('x1_Pexp_Part2.mat')

l12 = zeros(22,1);

l22 = zeros(22,1);

for i = 1:22
    
    fun = @(l) pcalc2(l(1), l(2), x1(i), Pexp(i));
    
    x_guess = [2000,8000];
    
    x_min = fminsearch(fun, x_guess);
    
    l12(i) = x_min(1);
    
    l22(i) = x_min(2);
    
end

plot(Pexp, l12, 'ro')
plot(Pexp, l22, 'rx')
g = polyfit(Pexp, l12, 1);
