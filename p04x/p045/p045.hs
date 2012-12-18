
main = print $ take 3 [y | x<-[1..], let y=x*(2*x-1),
                                     isTriangular y,
                                     isPentagonal y]

isSquare :: Integer -> Bool
isSquare n = truncate(sqrt(x)) * truncate(sqrt(x)) == n
             where x = fromIntegral n

isTriangular :: Integer -> Bool
isTriangular x = isSquare(8*x + 1)

isPentagonal :: Integer -> Bool
isPentagonal x = (isSquare(24*x + 1)) && 
                 ((1 + (truncate.sqrt$fromIntegral (24*x+1)))`mod`6==0)

