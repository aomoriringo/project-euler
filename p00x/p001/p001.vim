function! P001()
  let a:ans = 0
  for a:i in range(1,999)
    if a:i%3 == 0 || a:i%5 == 0
      let a:ans += a:i
    endif
  endfor
  return a:ans
endfunction
