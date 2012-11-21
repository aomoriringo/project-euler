main =
     do 
     print $ maximum [x*y | x<-[100..999], y<-[x..999], isPalindrome(x*y)]

isPalindrome :: Int -> Bool
isPalindrome x = s == reverse(s)
	       	 where s = show(x)
