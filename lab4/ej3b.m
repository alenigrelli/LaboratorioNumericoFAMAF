function eje3b()
    s = load("datos3b.mat");
    x = s.xd;
    y = s.yd;
    z = polyfit(x, x./y, 1);
    a = z(1);
    b = z(2);
    hold on;
    plot(x, y, "o");
    plot(s.xd, s.xd./(a*s.xd+b))
end
