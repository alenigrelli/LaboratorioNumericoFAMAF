function vecprim = primos(n)
    num = (1:n);
    i = 1;
    vecprim = [];
    vectorite = 1;
    while(i <= n)
        if(isprime(num(i)) == 1)
            vecprim(vectorite) = num(i);
            vectorite++;
        end
        i++;
    end
end
