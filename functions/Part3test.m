load('Part3Variables.mat')

fun = @(l) finalpcalc3test(l(1), l(2), x1exp, Texp, P);

x_guess = [2000,8000];

x_min = fminsearch(fun, x_guess);

l1 = x_min(1)*ones(21,1);

l2 = x_min(2)*ones(21,1);

l1 = zeros(31,1);

l2 = zeros(31,1);

%{
for i = 1:31
    
    fun = @(l) finalpcalc3test(l(1), l(2), x1exp(i), Texp(i), P(i));
    
    x_guess = [2000,8000];
    
    x_min = fminsearch(fun, x_guess);

    l1(i) = x_min(1);

    l2(i) = x_min(2);
    
end
%}