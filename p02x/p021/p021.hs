main = print . sum $ amicables 10000

amicables n = [x | x<-[2,4..n], isAmicable x]

isAmicable :: Integer -> Bool
isAmicable x = let y = d x
               in x /= y && d y == x
               where d n = sum . init $ factors n

factors :: Integer -> [Integer]
factors n = [x | x<-[1..n], n`mod`x==0]
