PHI = (1+sqrt(5))/2
fib(n) = int(round(PHI^n / sqrt(5)))
filter(x -> x<=4000000 && x%2==0, map(x -> fib(x), [1:50])) |> sum |> println
