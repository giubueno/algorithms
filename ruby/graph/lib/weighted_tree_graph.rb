require_relative 'tree_graph'

class WeightedTreeGraph < TreeGraph

  def reset(n)
    @elements = *(0..n)
    @heights = *(0..n).map{|x| 1 }
  end

  #
  # The root of x is @elements[@elements[..@elements[x] ..]]
  # until the parent is not the same.
  #
  def find_root(x)
    parent = @elements[x]
    height = 0

    until @elements[parent] == parent do
      parent = @elements[parent]
      height += 1
    end

    # only set a new height for the root if the current one is less than the calculated one
    @heights[parent] = height if @heights[parent] < height

    return parent
  end

  #
  # Calculate the height of a node's tree.
  #
  def find_height(x)
    parent = @elements[x]
    height = 0

    until @elements[parent] == parent do
      parent = @elements[parent]
      height += 1
    end

    # only set a new height for the root if the current one is less than the calculated one
    @heights[parent] = height if @heights[parent] < height

    return @heights[parent]
  end


  #
  # This is a bit faster implementation using a tree to control
  # the graphs.
  #
  def union(a, b)
    return false if connected?(a, b)
    rootA = find_root(a)
    rootB = find_root(b)

    if @heights[rootA] > @heights[rootB]
      @elements[rootB] = rootA
    elsif @heights[rootA] > @heights[rootB]
      @elements[rootA] = rootB
    else
      @elements[rootA] = rootB
      @heights[rootA] += 1
      @heights[rootB] += 1
    end

    return true
  end

end