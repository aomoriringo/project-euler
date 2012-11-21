import Data.List

main = print $ last $ factorization 600851475143

factors :: Integer -> [Integer]
factors n = [x | x<-[1..n], n`mod`x==0]

factorization :: Integer -> [Integer]
factorization 1 = []
factorization n = fac : factorization (n`div`fac)
	      	  where fac = (factors n) !! 1
