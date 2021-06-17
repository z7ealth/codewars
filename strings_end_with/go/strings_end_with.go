package main

import "fmt"

func main() {
	str := "abc"
	ending := "bc"
	if str == ending {
		fmt.Println(true)
		return
	}
	lengthA := len(str)
	lengthB := len(ending)
	if lengthA == 0 {
		fmt.Println(str == ending)
		return
	}
	str = str[(lengthA - lengthB):lengthA]
	fmt.Println(str == ending)
}
