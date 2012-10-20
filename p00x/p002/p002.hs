main = 
    do print $ sum [x | x<-takeWhile (<4000000) fib, x`mod`2 == 0]

fib :: [Int]
fib = 1:1:zipWith (+) fib (tail fib)
