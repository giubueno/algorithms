#define CATCH_CONFIG_MAIN
#include "catch.hpp"
#include "../src/change.h"

TEST_CASE( "When my change is 77 I should receive 3x25 + 2x1 coins", "[change]" ) {
  int coins[] = {25, 10, 5, 1};
  REQUIRE( getChange(coins, 4, 77)[0] == 3 );
  REQUIRE( getChange(coins, 4, 77)[3] == 2 );
}
