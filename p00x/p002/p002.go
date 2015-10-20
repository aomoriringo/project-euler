package main

import (
  "fmt"
)

func fib(n int) int {
  if n>1 {
    return fib(n-1) + fib(n-2)
  } else {
    return 1
  }
}

func p002() (ans int) {
  ans = 0
  for i := 1; i<1000 ; i++ {
    var tmp = fib(i)
    if tmp > 4000000 {
      break
    }
    if tmp%2 == 0 {
      ans += tmp
    }
  }
  return
}

func main() {
  fmt.Println(p002())
}
