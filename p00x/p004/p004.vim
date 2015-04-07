" Require: https://github.com/vim-jp/vital.vim
let s:V = vital#of('vital')
let s:String = s:V.import('Data.String')

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
  let l:str2 = s:String.reverse(string(a:num))
  return l:str1 == l:str2
endfunction

