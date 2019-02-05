load('Part4Data.mat')

myT = zeros(1001,1);
myy1 = zeros(1001,1);
L1 = 5391*ones(1001,1);
L2 = 8371*ones(1001,1);

for i = 1:1001
    fun = @(T) finalpcalc4(L1(i), L2(i), x1(i), T,Pexp(i));
    T_guess = 400;
    T = fzero(fun, T_guess);
    myT(i) = T;
    y_1 = finalpcalc4fory1(L1(i), L2(i), x1(i), myT(i),Pexp(i));
    myy1(i) = y_1;
end


plot(x1, myT, '-')
hold on
plot(myy1, myT, '-')

%{
[xout,yout] = intersections(x1,myT,myy1,myT,1);

myx1 = ((xout(2)+xout(3))/2)*ones(1001,1);

myTT = linspace(405, 440, 1001);
plot(myx1, myTT, '--')

myptop = ((yout(2)+yout(3))/2)*ones(1001,1);
plot(x1, myptop, '--')

hold off 

legend('Bubble point curve', 'Dew point curve')
ylabel('Temperature (K)')
xlabel('x_{1},y_{1}')
%}
%{
for i = 1:1001
    fun = @(T) finalpcalc4(L12(i), L22(i), x1(i), T,Pexp(i));
    T_guess = 400;
    T = fzero(fun, T_guess);
    myT2(i) = T;
    y_1 = finalpcalc4fory1(L12(i), L22(i), x1(i), myT(i),Pexp(i));
    myy12(i) = y_1;    
end

plot(x1, myT2,'--')
plot(myy12, myT2,'--')

[xout1,yout2] = intersections(x1,myT2,myy12,myT2,1);
%}