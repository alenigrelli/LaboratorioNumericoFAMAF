function results = inewton(x,y,z)

    results = [];
    if (length(x) ~= length(y) || length(x) == 0 || length(y) == 0)
        return
    end

    for i = 1 : length(z)
        p = 1;
        s = dif_div(x(1), y(1));
        for j = 2 : length(x)

            p = 1;
            xaux = x(1:j);
            yaux = y(1:j);
            
            for k = 1 : length(xaux) - 1
                p =  p*(z(i) - xaux(k));
                d = dif_div(xaux, yaux)*p;
            end

                s = s + d;

        end
        results(i) = s;
    end
end
