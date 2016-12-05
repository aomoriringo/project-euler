package main

import (
	"fmt"
	"strconv"
	"math"
)

func reverse(s string) string {
	ans := ""
	for i, _ := range s {
		ans += string(s[len(s)-i-1])
	}
	return string(ans)
}

func isPalindrome(x int) bool {
	s1 := strconv.Itoa(x)
	return s1 == reverse(s1)
}

func p004(digit int) (ans int) {
	ans = 0
	min := int(math.Pow(10, float64(digit-1)))
	max := int(math.Pow(10, float64(digit)))
	for i:=min ; i<max ; i++ {
		for j:=min ; j<max ; j++ {
			m := i*j
			if isPalindrome(m) && ans<m {
				ans = m
			}
		}
	}
	return ans
}

func main() {
	fmt.Println(p004(3))
}
