package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {
  str := os.Args[1]
  charArray := strings.Split(str, "")
  response := []string{}
  length := len(charArray)
  for i := 0; i < length; i += 2 {
	var a string
	var b string
	if i < length && i + 1 < length {
		a = charArray[i]
		b = charArray[i + 1]
	} else {
		a = charArray[i]
		b = "_"
	}
	response = append(response, fmt.Sprintf("%s%s", a, b))
  }
  fmt.Println(response)
}
