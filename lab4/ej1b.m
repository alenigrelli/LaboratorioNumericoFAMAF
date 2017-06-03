function ej1b()
    s = load("datos1a.mat");
    x = linspace(0, 10, 20);
    y = (3/4)*x - 1/2;
    hold on
    plot(x,y,'r');
    y_modif = y + randn(1,20);
    plot(x,y_modif, 'o');
    p = polyfit(x,y_modif,1)
    hold on
    p = polyfit(x,y_modif,1);
    yest = polyval(p,x);
    plot(x,yest,'k');
end
