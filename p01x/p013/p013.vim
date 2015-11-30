" Require: https://github.com/vim-jp/vital.vim
let s:big = vital#of('vital').import('Data.BigNum')

function! P013()
  let LENGTH = 10
  let n = s:big.from_num(0)
  for line in readfile("data.txt")
    let n = s:big.add(n, line)
  endfor
  return s:big.to_string(n)[:(LENGTH-1)]
endfunction
