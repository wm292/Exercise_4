load('x1_and_Pexp.mat')

l1 = zeros(21,1);

l2 = zeros(21,1);

for i = 1:21
    
    fun = @(l) pcalc(l(1), l(2), x1(i), Pexp(i));
    
    x_guess = [2000,8000];
    
    x_min = fminsearch(fun, x_guess);
    
    l1(i) = x_min(1);
    
    l2(i) = x_min(2);
    
end

plot(Pexp, l1, 'bo')
hold on
plot(Pexp, l2, 'bx')
f = polyfit(Pexp, l1, 1);
