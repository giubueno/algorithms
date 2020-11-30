// Package main provides ...
package main

import (
	"fmt"
	"os"
	"strconv"

	pairwise_product "github.com/giubueno/algorithms/go/pairwise_product"
)

func main() {
	if len(os.Args) < 2 {
		fmt.Println("Invalid input")
		os.Exit(1)
	}

	var nums []int = make([]int, len(os.Args)-1)

	for i, x := range os.Args[1:] {
		val, e := strconv.Atoi(x)
		if e != nil {
			fmt.Printf("Error converting %v to int\n", x)
			os.Exit(1)
		}
		nums[i] = val
	}

	max := pairwise_product.MaxProduct(nums)
	fmt.Printf("Max product: %d", max)
	os.Exit(0)
}
