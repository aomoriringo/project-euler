require 'prime'

puts Prime.each.take_while{|x| x<2000000}.inject(:+)

#puts Prime.each.take_while(&2000000.method(:>)).inject(:+)

