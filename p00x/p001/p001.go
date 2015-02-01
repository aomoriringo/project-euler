package main

import (
  "fmt"
)

func p001() (sum int){
  sum = 0
  for i :=0; i < 1000; i++ {
    if i%3==0 || i%5==0 {
      sum += i
    }
  }
  return
}

func main() {
  fmt.Println(p001())
}

