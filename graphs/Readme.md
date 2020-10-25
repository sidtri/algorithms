# Graph Representation

If you want to use facebook like connections where the link b/w friends are divergent then we can use graph representation.

Eg: flights, social networking, roads.

* Adjacent matrix
	- Extra space (v*v space)
	- Quickly check if friend is a friend. O(1)
	- Timecomplexity of bfs, dfs is v*v
	- Space complexity V*V
	- Use if its a dense graph
* Adjacent list
	- Quickly check for all friends.
	- Timecomplexity of bfs, dfs is V+E
	- Use if its a sparse graph
	- Space complexity V+E

Graphs have two types

* Undirected graphs
There's no direction b/w nodes(so two way direction)
Detect cycles through dfs or bfs
* Directed graphs
there's direction(means there's an edge - weather in degree or outdegree)
where outdegree means number of edges going out from a vertex(node)
detect cycles through dfs
* Unweighted graphs
* weighted graphs
* Islands in a graphs
* Cyclic graps
graph has cycles in it
* Uncyclic graph
graph doesnt have  cycles
* Dense graphs
E=(almost) |V*V|
* Sparse graphs
E =(almost) |V|
### Topological sorting

### Breadth first search
Traverse technique where node and its neighbours are visited first and then neighbours of neighbours. 

For graphs there's no particular order, so we need to remember if node is visited or not 



### Depth first search



### Minimum spanning tree


### Dijkstra's algorithm



### Connected components


### Articulated points



### Bridges in a graph
a path is a bridge only if we remove them then it'll split into two graphs.


### Targens algorithm for strongly connected components





# Synonyms

vertices => Nodes
edge => pair of vertices
Define edge E = [[pair of nodes], [node pair], [node1, node4]]
Define vertices V = [list of nodes, node1, node2]

