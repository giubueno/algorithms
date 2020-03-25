typedef struct Denomination {
	int size;
	int* values;
} Denomination;

/**
* Find the frequency of each coin to make a change.
* @coins should be already sorted in a non increasing way.
**/
int* getChange(int coins[], int numCoins, int amount);
