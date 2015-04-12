" Use: https://github.com/aomoriringo/bigint.vim
" WARNING: bigint.vim is alpha version
source ~/github/bigint.vim/bigint.vim

function! P010()
  let l:max = 2000000
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
      if i * l:j >= l:max
        break
      endif
      let p[i*l:j] = 0
      let l:j += 1
    endwhile
  endfor

  let l:ans = FromString("0")
  for i in range(l:max)
    if p[i]
      let l:ans = BigAdd(l:ans, i)
    endif
  endfor
  return ToString(l:ans)

endfunction
