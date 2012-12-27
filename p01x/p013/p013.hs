import System.IO

main = do
     hfile <- openFile "data.txt" ReadMode
     contents <- hGetContents hfile
     let num = sum . reader $ lines contents
     print $ take 10 $ show num
     hClose hfile

reader :: [String] -> [Integer]
reader x = map read x