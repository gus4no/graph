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
    @edges << edge
    @edges << edge2
  end

  def add_nodes nodes
    (1..nodes).each{ |v| self << v }
  end

  def neighbors_from node
    raise ArgumentError, "Unknown node #{node}" unless include?(node)
    neighbors = []
    @edges.each do |edge|
     neighbors << edge.dst if edge.src.eql? node
    end
    return neighbors.uniq
  end

end
