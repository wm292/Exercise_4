load('Part3Variables.mat')

myT = zeros(1001,1);
myy1 = zeros(1001,1);
L1 = 5391*ones(1001,1); %Lambda difference for species 1
L2 = 8371*ones(1001,1); %Lambda difference for species 2
for i = 1:1001
    fun = @(T) finalpcalc3(L1(i), L2(i), x1(i), T,Pexp(i));
    T_guess = 300;
    T = fzero(fun, T_guess);
    myT(i) = T;
    y_1 = finalpcalc3fory1(L1(i), L2(i), x1(i), myT(i),Pexp(i));
    myy1(i) = y_1;
    
end


plot(x1, myT)
hold on
plot(myy1, myT)
plot(x1exp, Texp, 'rx')
plot(y1exp, Texp, 'bo')

[xout,yout] = intersections(x1,myT,myy1,myT,1);

myx1 = ((xout(2)+xout(3))/2)*ones(30,1);

myTT = linspace(335, 375, 30);
plot(myx1, myTT, '--')

myptop = ((yout(2)+yout(3))/2)*ones(1001,1);
plot(x1, myptop, '--')

hold off 

legend('Bubble point curve', 'Dew point curve', 'Experimental data (x_{1})', 'Experimental data (y_{1})')

xlabel('x_{1},y_{1}')
ylabel('Temperature (\circC)')