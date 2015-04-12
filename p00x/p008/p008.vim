" Use: https://github.com/aomoriringo/bigint.vim
" WARNING: bigint.vim is alpha version
source ~/github/bigint.vim/bigint.vim

function! P008()
  let l:SERIAL_SIZE = 13
  let l:str = ""
  for line in readfile("data.txt")
    let l:str .= line
  endfor

  let l:ans = FromString("0")
  for i in range(len(l:str)-l:SERIAL_SIZE)
    let l:k = FromString("1")
    for j in range(i,i+SERIAL_SIZE-1)
      let l:k = BigMul(l:k, str2nr(l:str[j]))
    endfor

    if BigCompare(l:ans, l:k) == -1
      let l:ans = l:k
    endif
  endfor
  return ToString(l:ans)
endfunction

