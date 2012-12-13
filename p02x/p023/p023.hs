import Control.Applicative
import Data.List

main = do
     let list = abundants 28123
     print $ sum [x | x<-[1..28123], not $ isSum2abundants x list]

-- 過剰数判定
isAbundant :: Integer -> Bool
isAbundant n = (sum $ divisors n) > n

abundants :: Integer -> [Integer]
abundants n = filter isAbundant [1..n]

isSum2abundants :: Integer -> [Integer] -> Bool
isSum2abundants n list = any id [ _isAbundant (n-x) | x<-list, (n-x)>0]
                         where _isAbundant num = elem num list

divisors :: Integer -> [Integer]
divisors n = [1] ++ halfDivisors ++ (filter (/= root) $ map (div n) halfDivisors)
         where halfDivisors = filter ((== 0) . mod n) [2..root]
               root = truncate . sqrt $ fromIntegral n
       

