import Data.Numbers.Primes

main = print $ sum [x| x<-(takeWhile (<1000000) primes), 
                       all id $ map isPrime (candidate x),
                       x>=10]

candidate :: Int -> [Int]
candidate x = (cutright x) ++ (cutleft x)

cutleft :: Int -> [Int]
cutleft x | length (show x) == 1 = [x]
          | otherwise            = x:(cutleft y)
                                 where y = read.tail$show x

cutright :: Int -> [Int]
cutright x | length (show x) == 1 = [x]
           | otherwise            =  x:(cutright y)
                                  where y = read.init$show x


