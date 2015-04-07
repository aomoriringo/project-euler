" TODO: delete - out of index error

function! P007()
  let l:max = 1000000
  let l:p = []
  for i in range(l:max)
    call add(l:p, 1)
  endfor

  let l:p[0] = 0
  let l:p[1] = 0

  let l:end = sqrt(l:max)
  for i in range(2,float2nr(l:end))
    let l:j = 2
    while 1
      if i * l:j > l:max
        break
      endif
      let p[i*l:j] = 0
      let l:j += 1
    endwhile
  endfor

  let l:order = 1
  for i in range(l:max)
    if p[i]
      if l:order == 10001
        echo i
      endif
      let l:order += 1
    endif
  endfor

endfunction
