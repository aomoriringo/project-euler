puts -> {
  [*1..333].product([*1..1000]).each {|i,j|
    k = 1000-i-j
    return i*j*k if i*i+j*j == k*k
  }
}.call

# another
# puts [*1..333].product([*1..1000]).lazy.map {|i,j|
#   [i,j,1000-i-j]
# }.find{|i,j,k|
#   i*i+j*j == k*k
# }.inject(:*)


