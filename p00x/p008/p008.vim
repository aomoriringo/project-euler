" Require: https://github.com/vim-jp/vital.vim
let s:big = vital#of('vital').import('Data.BigNum')

function! P008()
  let l:SERIAL_SIZE = 13
  let l:str = ""
  for line in readfile("data.txt")
    let l:str .= line
  endfor

  let l:ans = s:big.from_num(0)
  for i in range(len(l:str)-l:SERIAL_SIZE)
    let l:k = s:big.from_num(1)
    for j in range(i,i+SERIAL_SIZE-1)
      let l:k = s:big.mul(l:k, str2nr(l:str[j]))
    endfor

    if s:big.compare(l:ans, l:k) == -1
      let l:ans = l:k
    endif
  endfor
  return s:big.to_string(l:ans)
endfunction

