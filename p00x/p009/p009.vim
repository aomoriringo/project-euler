function! P009()
  for i in range(1,333)
    for j in range(i, 1000)
      let l:k = 1000-i-j
      let l:terml = i*i + j*j
      let l:termr = k*k
      if l:terml == l:termr
        return i*j*l:k
      endif
    endfor
  endfor
endfunction
