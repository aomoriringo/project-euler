import Data.List

main = print . length $ nub [x^y | x<-[2..100], y<-[2..100]]