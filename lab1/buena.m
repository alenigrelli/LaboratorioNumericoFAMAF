function [x1, x2] = buena(a, b, c)
    disc = sqrt(b^2 - 4*a*c);
    x1 = (-b - sign(b)*disc) / 2*a;
    x2 = c /(a*x1)
end
