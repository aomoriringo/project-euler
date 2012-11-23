import Data.Char

main = do
  cs <- readFile "data.txt"
  let nums = map digitToInt cs'
             where cs'= filter (\x -> x/='\n') cs
  print $ maxNum nums

maxNum :: [Int] -> Int
maxNum [] = 0
maxNum all@(x:xs) = max (product (take 5 all)) (maxNum xs)
