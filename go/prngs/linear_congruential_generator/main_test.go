package linear_congruential_generator_test

import (
	lcg "linear_congruential_generator"
	"testing"
)

type testCase struct {
	seed int
	want int
}

func TestGenerator_Generate(t *testing.T) {
	cases := []testCase{
		testCase{ 4321, 7216 },
		testCase{ 7216, 5466 },
		testCase{ 5466, 1602 },
		testCase{ 1602, 5033 },
		testCase{ 5033, 2337 },
		testCase{ 2337, 1019 },
		testCase{ 1019, 3871 },
	}

	for i, tc := range cases {
		generator := lcg.New(7829, 378, 2310, tc.seed)
		got := generator.Generate()
		if got != tc.want {
			t.Errorf("Test %d: Random number not generated correctly, got = %d; want: %d", i, got, tc.want)
		}
	}
}
