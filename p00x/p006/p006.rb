$max=100
p (1..$max).inject(:+)**2 - (1..$max).map{|x| x**2}.inject(:+)

