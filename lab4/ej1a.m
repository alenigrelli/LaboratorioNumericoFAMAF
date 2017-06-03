function ej1a()
clear
s = load("datos1a.mat");
x = s.xd;
y = s.yd;
plot(x,y,'*');
p = polyfit(x,y,1);
yest = polyval(p,x);
hold on
plot(x,yest,'r');
end
