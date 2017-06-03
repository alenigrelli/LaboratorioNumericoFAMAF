function result = ej3(fun)
    x = []
    y = []
    z = []
    for j = 1 : 101
        z(j) = 24/25 + (j/25);
    end
    for i = 1 : 5
        x(i) = i
        y(i) = fun(i)
    end
    results = inewton(x,y,z)
    plot(z, results,'r*');

end
