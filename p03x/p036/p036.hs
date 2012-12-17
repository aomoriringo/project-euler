
main = print $ sum [x | x<-[1..1000000], isPalindrome (show x),
                                         isPalindrome (binary x)]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = x == (reverse x)

binary :: Int -> String
binary 0 = "0"
binary 1 = "1"
binary n =
       let (k, b) = n `divMod` 2
       in binary k ++ show b

