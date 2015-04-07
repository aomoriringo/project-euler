function! P006()
  let l:sum1 = 0
  let l:sum2 = 0
  for i in range(1,100)
    let l:sum1 += i*i
    let l:sum2 += i
  endfor
  let l:sum2 = l:sum2 * l:sum2
  return l:sum2 - l:sum1
endfunction
