-- 501 = 1001/2 + 1
main = print . sum $ map circleSum [1..501]

circleSum :: Integer -> Integer
circleSum 1 = 1
circleSum n = 2*(ur n + lr n)

--upper right
ur n = (n*2-1)^2
--lower right
lr n = ur (n-1) + (n-1)*2

