import Data.List

main = print $ permutation "0123456789" !! 999999

-- シンプルだけどちょっと遅い.
-- permutation :: Eq a => [a] -> [[a]]
-- permutation [] = [[]]
-- permutation xs = [x:ys | x <- xs, ys <- permutation (delete x xs)]

-- 上のより速め
permutation :: [a] -> [[a]]
permutation [] = [[]]
permutation ns = perm (length ns) (length ns - 1) [(ns, [])]

perm :: Int -> Int -> [([a],[a])] -> [[a]]
perm 0 _ xs = [a | (_, a) <- xs]
perm c n xs = perm (c-1)(n-1) $ concatMap (f n) xs
       	      where f n (xs,ys) = [(as++bs, ys++[b]) | x <- [0..n],
	      	      		  let (as, b:bs) = splitAt x xs]
