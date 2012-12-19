import Data.Numbers.Primes

main = print $ length [x | x<-takeWhile (<1000000) primes, isCircularPrime x]

rotateLeft :: Integral b => [a] -> b -> [a]
rotateLeft xs 0 = xs
rotateLeft (x:xs) n = rotateLeft (xs ++ [x]) (n-1)

circulars :: Integer -> [Integer]
circulars x = [read$rotateLeft strx y | y<-[1..(length strx)]]
              where strx = show x

isCircularPrime :: Integer -> Bool
isCircularPrime= all id . map isPrime . circulars
