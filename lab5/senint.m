function result = senint(x)
    results = [];
    for i= 1 : length(x)
        tol = ceil(x(i)/0.1);
        result(i) = intenumcomp(@funej3, 0, x(i), tol, "trapecio");
    end
end
