package main

import (
	"fmt"
	"math"
)

func p003(x int64) (ans int64) {
	for n := sqrt(x); n>=1 ; n-- {
		if x%n == 0 && isPrime(n) {
			return n
			break
		}
	}
	return
}

func isPrime(n int64) bool {
	length := sqrt(n)
	for i := int64(2); i<=length ; i++ {
		if n%i == 0 {
			return false
		}
	}
	return true
}

func sqrt(x int64) int64 {
	return int64(math.Sqrt(float64(x)))
}

func main() {
	fmt.Println(p003(600851475143))
}
