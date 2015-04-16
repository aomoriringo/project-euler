" Require: https://github.com/vim-jp/vital.vim
let s:big = vital#of('vital').import('Data.BigNum')

function! P003()
  let l:num = s:big.from_string("600851475143")
  let l:primes = Factorize(l:num)
  for i in l:primes
    echo s:big.to_string(i)
  endfor
endfunction

function! Factorize(num)
  let l:primes = []
  let l:n = deepcopy(a:num)
  let l:a = s:big.from_num(2)
  while 1
    while 1
      let [l:div, l:mod] = s:big.div_mod(l:n, l:a)
      if s:big.compare(l:mod, s:big.from_num(0)) == 0
        let l:n = l:div
        call add(primes, l:a)
      else
        break
      endif
    endwhile
    if s:big.compare(l:n, s:big.from_num(1)) == 0
      break
    endif
    let l:a = s:big.add(l:a, s:big.from_num(1))
  endwhile
  return l:primes
endfunction
