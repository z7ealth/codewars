package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {
	str := os.Args[1]
	var separator string
	if strings.Contains(str, "-") {
		separator = "-"
	} else {
		separator = "_"
	}
	splited := strings.Split(str, separator)
	length := len(splited)
	for i := 1; i < length; i++ {
		splited[i] = strings.Title(splited[i])
	}
	response := strings.Join(splited, "")
	fmt.Println(response)
}
