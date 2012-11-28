main = print $ length [x | x<-takeWhile (\n -> (length.show) n<1000) fibs] + 1


-- ref: http://d.hatena.ne.jp/kazu-yamamoto/20100624/1277348961
-- ref: http://tsumuji.cocolog-nifty.com/tsumuji/2010/08/haskell-fibonac.html
zipWith' f (a:as) (b:bs) = x `seq` x : zipWith' f as bs
         where x = f a b
zipWith' _ _ _ = []

fib n = fibs !! n
fibs = 1:1:zipWith' (+) fibs (tail fibs)

