require_relative 'graph'

#
# Implements a dynamic connectivity union using an unbalanced tree.
#
class TreeGraph < Graph

  #
  # The root of x is @elements[@elements[..@elements[x] ..]]
  # until the parent is not the same.
  #
  def find_root(x)
    parent = @elements[x]
    parent = @elements[parent] until @elements[parent] == parent
    return parent
  end

  #
  # This is a bit faster implementation using a tree to control
  # the graphs.
  #
  def union(a, b)
    return false if connected?(a, b)
    @elements[find_root(a)] = find_root(b)
    return true
  end

  def connected?(a, b)
    return (find_root(a) == find_root(b))
  end

end