" Use: https://github.com/aomoriringo/bigint.vim
" WARNING: bigint.vim is alpha version
source ~/github/bigint.vim/bigint.vim

function! P003()
  let l:num = FromString("600851475143")
  let l:primes = Factorize(l:num)
  for i in l:primes
    echo ToString(i)
  endfor
endfunction

function! Factorize(num)
  let l:primes = []
  let l:n = deepcopy(a:num)
  let l:a = FromString("2")
  while 1
    while 1
      let [l:div, l:mod] = BigDivMod(l:n, l:a)
      if BigCompare(l:mod, FromString("0")) == 0
        let l:n = l:div
        call add(primes, l:a)
      else
        break
      endif
    endwhile
    if BigCompare(l:n, FromString("1")) == 0
      break
    endif
    let l:a = BigAdd(l:a, FromString("1"))
  endwhile
  return l:primes
endfunction
