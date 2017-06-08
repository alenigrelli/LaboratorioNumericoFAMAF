function result = intenumcomp(fun, a, b, N, regla)

    punespc = linspace(a,b,N);
    switch regla
        case 'trapecio'
            h = (b-a)/N;
            s = 0;
            for i=2 : N - 1
                s += fun(punespc(i));
            end
            result = (h/2)*(fun(a) + fun(b) + s*2);

        case 'pm'
            h = (b-a)/N;
            result = 0;
            for i = 0.5 : N - 0.5
                result += h*fun(punespc(i+ 1/2));
            end

        case 'simpson'
            h = (b-a)/N;
            sumatoria1 = 0;
            sumatoria2 = 0;

            for i = 1 : N/2
                sumatoria1 = fun(a + (2*i - 1)*h);
            end

            for i = 1 : (N-2)/2
                sumatoria2 = fun(a + 2*i*h);
            end

            result = h/3*(fun(a) + fun(b)) + ((4*h)/3)*sumatoria1 + ((2*h)/3)*sumatoria2;

    end
end
