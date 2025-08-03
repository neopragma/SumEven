package main

import "fmt"

func main() {
    sum := 0
    for i := 0; i <= 100; i += 2 {
        sum += i
    }
    fmt.Println("Result: ", sum)
}