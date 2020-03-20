typedef struct Denomination {
	int size;
	int* values;
} Denomination;

int* getChange(int coins[], int numCoins, int amount);
