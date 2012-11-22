main = 
    do print $ calc 100

calc :: Int -> Int
calc x = sumSquare x - squareSum x

sumSquare :: Int -> Int
sumSquare x = sum [1..x]^2

squareSum :: Int -> Int
squareSum x = sum [ n^2 | n<-[1..x] ]