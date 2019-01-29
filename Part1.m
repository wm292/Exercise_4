load('x1_and_Pexp.mat')

fun = @(x) pcalc(x(1), x(2), x1, Pexp);

x_guess = [2000,8000];

x_min = fminsearch(fun, x_guess);

l1 = x_min(1)*ones(21,1);

l2 = x_min(2)*ones(21,1);

[p_calcs, y1] = finalpcalc1(l1,l2,x1);

plot(x1,p_calcs)

hold on 

plot(x1,Pexp, 'x')

plot(y1, p_calcs)

hold off 

[xout,yout] = intersections(x1,p_calcs,y1,p_calcs,1);