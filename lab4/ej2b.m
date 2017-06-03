function ej2()
    hold on
    x = linspace(0,4*pi,50);
    y = cos(x) + randn(1,50);
    p = polyfit(x,y,5);
    yest = polyval(p,x);
    plot(x,yest,'r');
    hold on;
    plot(x,y, "o -k");
end
