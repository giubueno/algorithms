CXX = g++
SRC_DIR = src
TEST_DIR = tests
DEPS = $(SRC_DIR)/MaxPairwiseProduct.h $(TEST_DIR)/catch.hpp
OBJ = MaxPairwiseProduct.o MaxPairwiseProductTest.o

MaxPairwiseProduct.o: $(SRC_DIR)/MaxPairwiseProduct.cpp $(DEPS)
	$(CXX) -c $(SRC_DIR)/MaxPairwiseProduct.cpp

MaxPairwiseProductTest.o: $(TEST_DIR)/MaxPairwiseProductTest.cpp MaxPairwiseProduct.o
	$(CXX) -std=c++11 -c $(TEST_DIR)/MaxPairwiseProductTest.cpp

MaxPairwiseProductTest: MaxPairwiseProduct.o MaxPairwiseProductTest.o
	$(CXX) -o $@ $^

.PHONY: test clean

test: MaxPairwiseProductTest
	./MaxPairwiseProductTest -r console -s

clean:
	rm *.o MaxPairwiseProductTest
