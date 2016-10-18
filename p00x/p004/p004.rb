def palindrome?(x)
  s = x.to_s
  s == s.reverse
end

max=0
(100..1000).each{|x|
  (x..1000).each{|y|
    n = x*y
    max = n if palindrome?(n) && n > max
  }
}
puts max
