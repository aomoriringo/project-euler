main = 
    do print $ foldr (\x y ->lcm x y) 1 [1..20]