main = 
    do print $ sum [ x | x<-init[1..1000], x`mod`3==0 || x`mod`5==0 ]
  