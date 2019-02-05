load('Part4Data.mat')

myT = zeros(1001,1);
L1 = 5391*ones(1001,1);
L2 = 8371*ones(1001,1);

for i = 1:1001
    fun = @(T) finalpcalc4d(L1(i),L2(i),x1(i), T, Pexp(i));
    T_guess = 400;
    T = fzero(fun, T_guess);
    myT(i) = T; 
end

myy1 = zeros(1001,1);

for i = 1:1001
    myy1(i) = finalpcalc4dy1(L1(i),L2(i),x1(i), myT(i), Pexp(i)); 
end


plot(x1, myT)
hold on
plot(myy1, myT)
hold off

[xout,yout] = intersections(x1,myT,myy1,myT,1);

[They1, coeffsat1, coeffsat2, coeff1, coeff2, poynt1, poynt2] = finalpcalc4dy12(L1(662), L2(662), (xout(2)+xout(3))/2, yout(2), Pexp(662));