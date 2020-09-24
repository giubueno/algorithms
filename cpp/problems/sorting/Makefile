CXX = g++
SRC_DIR = src
TEST_DIR = tests
DEPS = $(SRC_DIR)/insertion.h $(TEST_DIR)/catch.hpp
OBJ = insertion.o insertion_test.o

insertion.o: $(SRC_DIR)/insertion.cpp $(DEPS)
	$(CXX) -c $(SRC_DIR)/insertion.cpp

insertion_test.o: $(TEST_DIR)/insertion_test.cpp insertion.o
	$(CXX) -std=c++11 -c $(TEST_DIR)/insertion_test.cpp

insertion_test: insertion.o insertion_test.o
	$(CXX) -o $@ $^

.PHONY: test clean

test: change_test
	./change_test -r console -s

clean:
	rm *.o change_test
