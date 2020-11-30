// Package pairwiseproduct provides only one function called MaxProduct.
package pairwiseproduct

import (
	"sort"
)

// MaxProduct calculates the max product of two different elements of the slice.
func MaxProduct(nums []int) int {
	sort.Slice(nums, func(i, j int) bool {
		return nums[i] < nums[j]
	})

	size := len(nums)
	if size < 2 {
		return 0
	}

	return nums[size-1] * nums[size-2]
}
