
main = print $ find

find = head [((a,b,c),a*b*c) | (a,b,c)<-pythagoreans 1000, a+b+c==1000]

pythagoreans :: Integer -> [(Integer, Integer, Integer)]
pythagoreans n = [(a,b,c) | a<-[1..n], b<-[a+1..n], 
                 let c = truncate.sqrt.realToFrac $ a^2+b^2, 
                 isPythagorean a b c]

isPythagorean :: Integer -> Integer -> Integer -> Bool
isPythagorean a b c = a^2 + b^2 == c^2
