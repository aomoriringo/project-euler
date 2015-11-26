function! P011()
  let SERIAL_SIZE = 4
  let data = []
  for line in readfile("data.txt")
    let l = split(line, " ")
    call add(data, map(l, 'str2nr(v:val)'))
  endfor

  let dir_h_basis = [1, 1, 0, -1]
  let dir_v_basis = [0, 1, 1, 1]

  let ans = 0
  let vsize = len(data)
  let hsize = len(data[0])
  for i in range(vsize)
    for j in range(hsize)
      for dir_idx in range(4)
        let tmp = 1
        let dir_h = dir_h_basis[dir_idx]
        let dir_v = dir_v_basis[dir_idx]

        if (s:is_included(i+dir_h*(SERIAL_SIZE-1), 0, hsize-1)
            \ && s:is_included(j+dir_v*(SERIAL_SIZE-1), 0, vsize-1)) != 1
            continue
        endif
        for k in range(SERIAL_SIZE)
          let tmp = tmp*data[i + dir_h*k][j + dir_v*k]
        endfor
        if tmp > ans
          let ans = tmp
        endif
      endfor
    endfor
  endfor
  return ans
endfunction

function! s:is_included(num, min, max)
  return (a:min <= a:num) && (a:num <= a:max)
endfunction

