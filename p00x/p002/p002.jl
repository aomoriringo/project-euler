PHY = (1+sqrt(5))/2
fib(n) = int(round(PHY^n / sqrt(5)))

fibs = Int[]
for i=1:1000
  x = fib(i)
  if x > 4000000
    break
  elseif x%2 == 0
    continue
  end
  push!(fibs,fib(i))
end
sum(fibs) |> println
