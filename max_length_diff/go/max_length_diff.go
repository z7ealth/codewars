package main

import (
	"fmt"
	"math"
)

func main() {
	//a1 := []string{}
	a1 := []string{"hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"}
	a2 := []string{"cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"}

	if len(a1) == 0 || len(a2) == 0 {
		fmt.Println(-1)
		return
	}

	var diffs []float64
	for _, strA := range a1 {
		for _, strB := range a2 {
			diff := float64(len(strA) - len(strB))
			diffs = append(diffs, math.Abs(diff))
		}
	}
	max := diffs[0]
	for _, value := range diffs {
		if value > max {
			max = value
		}
	}
	println(int(max))
}
