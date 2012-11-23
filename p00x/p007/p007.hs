import Data.List

-- TODO: 速くする
main =
    do print $ primes !! 10001

primes :: [Integer]
primes = 2:3:[x | x<-[5,7..], not $ isDivisible x (underprimes x)]
         where underprimes n = takeWhile (<n`div`2) (tail primes)

isDivisible :: Integer -> [Integer] -> Bool
isDivisible n xs = any (\x -> n`mod`x == 0) xs
