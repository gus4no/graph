graph
=====

You can create a sample graph by running.

Dijkstra.sample

or you can create custom graphs via IRB with the following commands

`g = Graph.new` to initialize the graph.
`g.add_nodes(x)` to add the desired amount of nodes
`g.connect(1,3,4)` this line would connect the nodes, being the fisr argument the source node, the second one the destination and the third argument the distance between them

After all the connections are done

you can call

`g.shortest_path(a, b)`

and this will get you the shortest path from point a and b.
