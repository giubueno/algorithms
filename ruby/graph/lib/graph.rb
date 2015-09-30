class Graph

  def initialize(n)
    reset(n)
  end

  def reset(n)
    @elements = *(0..n)
  end

  def union(a, b)
    return false if @elements[a] == b
    original = @elements[a]
    @elements.each_index { |index| @elements[index] = b if @elements[index] == original }
    return true
  end

  def connected?(a, b)
    return (@elements[a] == b || @elements[b] == a)
  end

  def connected_in?(set, a)
    return @elements[a] == set
  end
end