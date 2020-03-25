#include <stdio.h>
#include "MaxPairwiseProduct.h"

int findMaxExcept(int numbers[], int size, int except) {
	int max = -1;

	for(int i = 0; i < size; i++) {
		if(except >= 0 && i == except)
			continue;

		if(max == -1 || numbers[i] > numbers[max])
			max = i;
	}

	return max;
}

int findMax(int numbers[], int size) {
	return findMaxExcept(numbers, size, -1);
}

long long MaxPairwiseProduct(int numbers[], int size) {
	if(size < 2) return 0;

	int left  = findMax(numbers, size); // O(n)
	int right = findMaxExcept(numbers, size, left); // O(n)

	// O(2n) => O(n)

	return ((long long)numbers[left]) * numbers[right];
}
