package main

import (
  "fmt"
)

func fib() func() int {
  a, b := 0, 1
  return func() int {
    a, b = b, a+b
    return a
  }
}

func p002() (ans int) {
  ans = 0
  f := fib()
  tmp := 0
  for tmp <= 4000000 {
    tmp = f()
    if tmp%2 == 0 {
      ans += tmp
    }
  }
  return
}

func main() {
  fmt.Println(p002())
}
