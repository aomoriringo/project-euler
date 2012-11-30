import Data.Char

--TODO: 速くする
--TODO: 100000以上に条件を満たす数がないことを証明できるか?
main = print.sum $ [x | x<-[3..100000], isSatisfy x]

isSatisfy :: Int -> Bool
isSatisfy x = x == (sum $ map (factorial.digitToInt) (show x))

factorial :: Integral a => a -> a
factorial 0 = 1
factorial n = n * (factorial (n-1))