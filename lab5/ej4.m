function result = ej4()
    a=0;
    b=1;
    error=1e-6;
    S=[1,2];
    n=100:50:1000;
    for i = 1 : length(n)
    	S=[S,intenumcomp(@ej4a,a,b,n(1),"trapecio")];
        if abs(S(end) - S(end-1)) < error
            S(end)
            return;
        end
    end
end
