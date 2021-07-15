package linear_congruential_generator

type generator struct {
	Modulus    int
	Multiplier int
	Increment  int
	Seed       int
}

type Generator interface {
	Generate() int
}

func (g generator) Generate() int {
	return ((g.Seed * g.Multiplier) + g.Increment) % g.Modulus
}

func New(modulus int, multiplier int, increment int, seed int) Generator {
	return generator{modulus, multiplier, increment, seed}
}
