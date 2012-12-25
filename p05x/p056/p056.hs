import Data.Char

main = print $ maximum [digitSum (x^y) | x<-[1..100], y<-[1..100]]

digitSum :: Show a => a -> Int
digitSum = sum . map digitToInt . show