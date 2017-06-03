function ej3a()
    s = load("datos3a.mat");
    p = polyfit(log(s.x), log(s.y), 1);
    A = p(1);
    C = exp(p(2));
    hold on;
    plot(s.x, s.y, "-r *")
    plot(s.x, C*(s.x.^A),"-k o")-
end
