class Dijkstra
  def self.sample
    g = Graph.new
    g.add_nodes 6
    g.connect 1, 2, 1
    g.connect 1, 6, 14
    g.connect 1, 3, 9
    g.connect 2, 3, 10
    g.connect 2, 4, 15
    g.connect 3, 6, 2
    g.connect 3, 4, 11
    g.connect 4, 5, 6
    g.connect 5, 6, 9
    g
  end
end
