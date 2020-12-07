# Graphs

# A graph is a data structure that specializes in relationshis, as it easily conveys how data is connected.

# All trees are graphs, but not all graphs are trees

# A graph may have nodes that form what is known as a cycle.

# Trees are graphs that don't have cycles.

# Another thing specific to trees is that every node is somehow connected to every other node, even if the connectiuons are indirect. However, its possible for a graph to not be fully connected.

# A graph that has no disconnected nodes is  called a connected graph.

# Each node is called a vertex

# The lines beteween the vertices are called edges.

# A bare bones Ruby implementation of a social network using a hash table:

friends = {
   	  "Alice" => ["Bob", "Diana", "Fred"],
   	  "Bob" => ["Alice", "Cynthia", "Diana"],
   	  "Cynthia" => ["Bob"],
   	  "Diana" => ["Alice", "Bob", "Fred"],
   	  "Elise" => ["Fred"],
   	  "Fred" => ["Alice", "Diana", "Elise"]
   	}”

# Directed Graphs

# In some social networks relationships are not mutual. For example, a social network may allow Alice to foolow another but Bob doesn't have to follow Alice back.

# A directed graph indicates the direction of the relationship.