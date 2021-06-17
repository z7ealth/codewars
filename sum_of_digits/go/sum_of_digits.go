package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	n := 493193
	num := strconv.Itoa(n)
	numSlice := strings.Split(num, "")
	result := sumValues(numSlice)
	for len(strconv.Itoa(result)) > 1 {
		numSlice = strings.Split(strconv.Itoa(result), "")
		result = sumValues(numSlice)
	}
	fmt.Println(result)
}

func sumValues(numSlice []string) int {
	sum := 0
	for _, v := range numSlice {
		n, _ := strconv.Atoi(v)
		sum += n
	}
	return sum
}
