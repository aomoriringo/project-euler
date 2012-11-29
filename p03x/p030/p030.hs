import Data.Char

-- TODO: 各桁を5乗した数の和が元の数と一致するような数が、
-- 1000000以上ではありえないことを証明できるか?
main = print $ sum [x | x<-[2..1000000], calc x 5== x ]

calc :: Integer -> Integer -> Integer
calc x pow = let xs = map digitToInt (show x)
           in sum [ (toInteger n)^pow | n<-xs ]