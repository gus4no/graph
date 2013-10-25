class Graph

  attr_accessor :nodes

  def initialize
    @nodes = Array.new
  end

  def add_node(node)
    @nodes << node
  end

end
