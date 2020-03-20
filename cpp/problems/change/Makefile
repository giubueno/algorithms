CXX = g++
SRC_DIR = src
TEST_DIR = tests
DEPS = $(SRC_DIR)/change.h $(TEST_DIR)/catch.hpp
OBJ = change.o change_test.o

change.o: $(SRC_DIR)/change.cpp $(DEPS)
	$(CXX) -c $(SRC_DIR)/change.cpp

change_test.o: $(TEST_DIR)/change_test.cpp change.o
	$(CXX) -std=c++11 -c $(TEST_DIR)/change_test.cpp

change_test: change.o change_test.o
	$(CXX) -o $@ $^

.PHONY: test clean

test: change_test
	./change_test -r console -s

clean:
	rm *.o change_test
