class Node
  attr_accessor :src, :dst, :weight

  def initialize src, dst, weight = 1
    @src = src
    @dst = dst
    @weight = weight
  end
end
