" Require: https://github.com/vim-jp/vital.vim
let s:V = vital#of('vital')
let s:Math = s:V.import('Math')

function! P004()
  let l:ans = 0
  for i in range(1000)
    for j in range(i,1000)
      if s:is_palindromic(i*j) && i*j > ans
        let l:ans = i*j
      endif
    endfor
  endfor
  return l:ans
endfunction

function! s:is_palindromic(num)
  let l:str1 = string(a:num)
  let l:str2 = join(reverse(split(l:str1, '.\zs')),'')
  return l:str1 == l:str2
endfunction

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

