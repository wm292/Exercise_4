[Pexp, x1] = meshgrid(1:0.5:50, 0:(1/98):1);
n = 99;
m = 99;
L1 = 5391*ones(n,m);
L2 = 8371*ones(n,m);
myT = zeros(n,m);
myy1 = zeros(n,m);

for i = 1:n
    for j = 1:m
        fun = @(T) finalpcalc4final(L1(i,j), L2(i,j), x1(i,j), T,Pexp(i,j));
        T_guess = 400;
        T = fzero(fun, T_guess);
        myT(i,j) = T;
        y_1 = finalpcalc4fory1(L1(i,j), L2(i,j), x1(i,j), myT(i,j),Pexp(i,j));
        myy1(i,j) = y_1;
    end
end

surf(x1,myT, Pexp)
hold on
surf(myy1,myT, Pexp)