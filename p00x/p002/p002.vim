" Require: https://github.com/vim-jp/vital.vim
let s:V = vital#of('vital')
let s:Math = s:V.import('Math')

function! P002()
  let l:ans = 0
  for l:i in range(1,50)
    let l:tmp = s:Math.fib(l:i)
    if (l:tmp > 4000000)
      break
    elseif (l:tmp%2 == 0)
      let l:ans += l:tmp
    endif
  endfor
  return l:ans
endfunction

