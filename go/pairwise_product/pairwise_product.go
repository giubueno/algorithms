// Package pairwiseproduct provides only one function called MaxProduct.
package pairwiseproduct

import (
	"sort"
)

// MaxProduct finds the maximum product of two distinct numbers in a sequence of non-negative integers.
func MaxProduct(nums []int) int {
	// sort the numbers to have an average O(nlogn) performance (quicksort).
	sort.Slice(nums, func(i, j int) bool {
		return nums[i] < nums[j]
	})

	size := len(nums)
	if size < 2 {
		return 0
	}

	return nums[size-1] * nums[size-2]
}
