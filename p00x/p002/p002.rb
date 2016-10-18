$fibs = {0=> 1,
         1=> 1}
def fib(n)
  unless $fibs.key?(n)
    $fibs[n] = fib(n-1) + fib(n-2)
  end
  return $fibs[n]
end

puts (1..100).map{|x| fib(x)}
             .take_while{|x| x<4000000}
             .select{|x| x%2 == 0}
             .inject(:+)

