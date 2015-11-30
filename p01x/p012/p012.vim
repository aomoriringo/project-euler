function! P012()
  let threshold = 500
  let n = 1
  while 1
    let s = n * (n+1) / 2
    if s:divisor_count(s) >= threshold
      break
    endif
    let n += 1
  endwhile
  return s
endfunction

function! s:divisor_count(n)
  let n = a:n
  let j = 1
  let c = 1
  let i = 2
  while (i*i <= n)
    let j = 1
    while 1
      if (n%i)!=0
        break
      endif
      let n = n/i
      let j += 1
    endwhile
    let i += 1
    let c = c*j
  endwhile

  return (1<n) ? c*2 : c
endfunction
