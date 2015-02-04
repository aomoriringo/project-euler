let s:V = vital#of('vital')
let s:Math = s:V.import('Math')

function! P002()
  let a:ans = 0
  for i in range(1,50)
    let a:tmp = s:Math.fib(i)
    if (a:tmp > 4000000)
      break
    elseif (a:tmp%2 == 0)
      let a:ans += a:tmp
    endif
  endfor
  return a:ans
endfunction

