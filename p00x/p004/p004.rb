def is_palindrome(x)
  s = x.to_s
  return s == s.reverse
end

$max=0
(100..1000).each{|x|
  (x..1000).each{|y|
    n = x*y
    if is_palindrome(n) and n > $max
      $max = n
    end
  }
}
p $max
# p is_palindrome(9009)
