class Graph < Array
  #each element of the array is meant to be a node

  attr_accessor :edges

  def initialize
    @edges = []
  end

  def connect src, dst, length
    raise ArgumentError, "Unknown source node #{src}" unless include?(src)
    raise ArgumentError, "Unknown destination node #{dst}" unless include?(dst)
    edge = Edge.new src, dst, length
    edge2 = Edge.new dst, src, length
    #this should connect both nodes with the same edge in both ways
    @edges.push edge
    @edges.push edge2
  end

end
