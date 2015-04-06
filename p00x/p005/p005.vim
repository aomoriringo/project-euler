" Require: https://github.com/vim-jp/vital.vim
let s:V = vital#of('vital')
let s:Math = s:V.import('Math')

function! P005()
  let l:ans = 1
  for i in range(1,20)
    let l:ans = s:Math.lcm([l:ans, i])
  endfor
  return l:ans
endfunction
