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
    neighbors.uniq
  end

  def distance src, dst
    @edges.each do |edge|
      return edge.weight if edge.src.eql?(src)  && edge.dst.eql?(dst)
    end
  end

  #not my code :S

  def shortest_path(src, dst = nil)
    distances = {}
    previouses = {}
    self.each do |node|
      distances[node] = nil
      previouses[node] = nil
    end
    distances[src] = 0
    nodes = self.clone
    until nodes.empty?
      nearest_node = nodes.inject do |a, b|
        next b unless distances[a]
        next a unless distances[b]
        next a if distances[a] < distances[b]
        b
      end
      break unless distances[nearest_node] # Infinity
      if dst and nearest_node == dst
        return distances[dst]
      end
      neighbors = nodes.neighbors_from(nearest_node)
      neighbors.each do |node|
        alt = distances[nearest_node] + nodes.distance(nearest_node, node)
        if distances[node].nil? or alt < distances[node]
          distances[node] = alt
          previouses[node] = nearest_node
          # decrease-key v in Q # ???
        end
      end
      nodes.delete nearest_node
    end
    if dst
      return nil
    else
      return distances
    end
  end

end
