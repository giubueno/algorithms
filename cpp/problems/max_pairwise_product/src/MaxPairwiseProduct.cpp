#include <stdio.h>
#include "MaxPairwiseProduct.h"

int findMaxExcept(int numbers[], int size, int* except) {
	int* max = NULL;

	for(int i = 0; i < size; i++) {
		if(except != NULL && numbers[i] == (*except))
			continue;

		if(max == NULL || numbers[i] > (*max))
			max = &numbers[i];
	}

	if(max == NULL)
		return 0;

	return (*max);
}

int findMax(int numbers[], int size) {
	return findMaxExcept(numbers, size, NULL);
}

long long MaxPairwiseProduct(int numbers[], int size) {
	if(size < 2) return 0;

	int left  = findMax(numbers, size); // O(n)
	int right = findMaxExcept(numbers, size, &left); // O(n)

	// O(2n) => O(n)

	return ((long long)left) * right;
}
