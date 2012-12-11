main = print $ head [y | x<-[1..], let y = tri x,
                                   (tri_factor_len y) >= 500]

tri :: Integer -> Integer
tri x = x * (x+1) `div` 2

tri_factor_len :: Integer -> Int
tri_factor_len n = let l m max = length [x | x<-[1..max], m`mod`x==0] * 2
                   in l n (floor.sqrt$fromIntegral n)
