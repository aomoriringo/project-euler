nums = File.open('data.txt').read.tr("\n", '').chars.map(&:to_i)
puts nums.each_cons(13).map { |xs|
  xs.inject(:*)
}.max
