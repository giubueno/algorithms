module Math
  def self.factorial(x)
    x <= 1 ? 1 : (1..x).map(&:to_i).inject(:*)
  end

  #
  # See https://en.wikipedia.org/wiki/Combination
  #
  def self.combination(n, k)
    raise ArgumentError, 'n should be greater than zero' if n <= 0
    raise ArgumentError, 'n should be greater than k' if k >= n
    factorial(n)/(factorial(k)*factorial(n-k))
  end

  #
  # See https://en.wikipedia.org/wiki/Median
  #
  def self.median(numbers)
    return nil           if numbers.size == 0
    return numbers.first if numbers.size == 1

    if (numbers.size % 2) > 0
      numbers[numbers.size / 2]
    else
      median_index = numbers.size / 2
      left = numbers[median_index - 1]
      right = numbers[median_index]
      (left.to_f + right.to_f) / 2
    end
  end
end
