#define CATCH_CONFIG_MAIN
#include "catch.hpp"
#include "../src/MaxPairwiseProduct.h"

TEST_CASE( "when there is only one number 2" ) {
  int numbers[] = {2};
  REQUIRE( MaxPairwiseProduct(numbers, 1) == 0 );
}

TEST_CASE( "when the numbers are 1 2 3" ) {
  int numbers[] = {1, 2, 3};
  REQUIRE( MaxPairwiseProduct(numbers, 3) == 6 );
}

TEST_CASE( "when the numbers are 100000 90000" ) {
  int numbers[] = {100000, 90000};
  REQUIRE( MaxPairwiseProduct(numbers, 2) == 9000000000 );
}

TEST_CASE( "when the numbers are 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20" ) {
  int numbers[] = {20, 1, 2, 3, 4, 5, 6, 7, 8, 19, 10, 11, 12, 13, 14, 15, 16, 17, 18, 9};
  REQUIRE( MaxPairwiseProduct(numbers, 20) == 380 );
}

TEST_CASE( "when there are a lot of numbers" ) {
  int numbers[] = {75,6,95,25,40,67,32,70,59,86,33,45,31,50,46,61,51,56,49,38,92,84,7,79,55,98,26,23,58,24,35,41,88,15,89,74,29,64,12,42,14,68,62,39
  ,8,72,28,78,19
  ,4,76,27,90,83,21,54,91,44,80,34,36
  ,3,13,85,30,10,73,53,93,100
  ,9,43,87,63,69,96,20,22
  ,1,17,66,57,82,48,37,11,99,81,71,18,60
  ,2,94
  ,5,52,65,97,47,77,16};
  REQUIRE( MaxPairwiseProduct(numbers, 100) == 9900 );
}
