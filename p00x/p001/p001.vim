function! P001()
  let l:ans = 0
  for l:i in range(1,999)
    if l:i%3 == 0 || l:i%5 == 0
      let l:ans += l:i
    endif
  endfor
  return l:ans
endfunction
