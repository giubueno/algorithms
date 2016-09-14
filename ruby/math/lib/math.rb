module Math
  #
  # See https://en.wikipedia.org/wiki/Combination
  #
  def self.factorial(x)
    x <= 1 ? 1 : (1..x).map(&:to_i).inject(:*)
  end

  def self.combination(n, k)
    raise ArgumentError, 'n should be greater than zero' if n <= 0
    raise ArgumentError, 'n should be greater than k' if k >= n
    factorial(n)/(factorial(k)*factorial(n-k))
  end
end
