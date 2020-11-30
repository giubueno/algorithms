// Package pairwise_product provides ...
package pairwiseproduct

import "testing"

func TestMaxProduct(t *testing.T) {

	tests := []struct {
		name string
		nums []int
		want int
	}{
		{"Without any number", []int{}, 0},
		{"With only one number", []int{1}, 0},
		{"Only one zeros", []int{0, 0, 0}, 0},
		{"Only one 1", []int{1, 1, 1}, 1},
		{"With negative number", []int{1, 5, -3}, 5},
		{"Only With non-negative number", []int{1, 3, 0, 5}, 15},
	}
	for _, tt := range tests {
		t.Run(tt.name, func(t *testing.T) {
			if got := MaxProduct(tt.nums); got != tt.want {
				t.Errorf("MaxProduct() = %v, want %v", got, tt.want)
			}
		})
	}
}
