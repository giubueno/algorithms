#include <cstdlib>
#include "change.h"

int* getChange(int coins[], int numCoins, int amount) {
	int k, left, denomination, quantity;
	int* result = (int*) malloc(numCoins * sizeof(int));

	left = amount;

	for(k = 0; k < numCoins; k++) {
		denomination = coins[k];
		if(denomination > left) {
			result[k] = 0;
			continue;
		}

		quantity = left / denomination;
		result[k] = quantity;
		left = left - (denomination * quantity);
	}

	return result;
}
