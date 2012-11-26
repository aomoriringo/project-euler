import Data.Char

main = print $ digitSum $ factorial 100

factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * (factorial (n-1))

digitSum :: Show a => a -> Int
digitSum = sum . map digitToInt . show

