class Vertex
  attr_accessor :value, :adjacent_vertices

  def initialize(value)
    @value = value
    @adjacent_vertices = []
  end

  def add_adjacent_vertex(vertex)
    return if adjacent_vertices.include?(vertex)
    @adjacent_vertices << vertex
    vertex.add_adjacent_vertex(self)
  end
end

alice = Vertex.new("alice")
bob = Vertex.new('bob')
cynthia = Vertex.new("cynthia")

alice.add_adjacent_vertex(bob)
alice.add_adjacent_vertex(cynthia)
bob.add_adjacent_vertex(cynthia)
cynthia.add_adjacent_vertex(bob)

# The depth-first search algorithm works as follows:

#1 Start at any random vertex within the graph
#2 Add the current vertex to the hash table to mark it as having been visisted
#3 Iterate through the current vertex's adjacent vertices
#4 For each adjacent vertex, if the adjacent vertex has already been visited, ignore it
#5 If the adjacent vertex has not been visited, recursively perform depth-first search on that vertex.

# def dfs_traverse(vertex, visted_vertices={})
#   visited_vertices[vertex.value] = true
#   puts vertex.value
#   vertex.adjacent_vertices.each do |adjacent_vertex|
#     next if visited_verticies[adjacent_vertex.value]
#     dfs_traverse(adjacent_vertex, visted_vertices)
#   end
# end


def dfs(vertex, search_value, visited_verticies={})
  visited_vertices[vertex.value] = true
  vertex.adjacent_verticies.each do |adjacent_vertex|
    next if visited_vertices[adjacent_vertex.value]
    return adjacent_vertex.value if adjaent_vertex.value == search_value
    vertex_were_searching_for = dfs(adjaent_vertex, search_value, visited_vertices)
    return vertex_were_searching_for if vertex_were_searching_for
  end
  return nil
end

# Here is the algorithm for breadth-first traversal:

#1 Start at any vertex within the graph. We'll call this the "starting vertex"
#2) Add the starting vertex to the hash table to makr it as having been visited.
#3) Add the starting vertex to a queue.
#4) Start a loop that runs while the queue isn't empty
#5) Within this loop remove the first vertex from the queue. We'll call this the "curent vertex"
#6) Iterate over all the adjacent vertices of current vertext
#7) If the adjacent vertex was already visited, ignore it.
#8) If the adjacent vertex has not yet been visited, mark it as visited by adding it to a hash table and add iti to the queue.
#9)Repeat this loop until the queue is empty.

# Breadth-first traversal:

def bfs_travers(starting_vertex)
  queue = Queue.new

  visited_vertices = {}
  visited_verticies[starting_vertex.value] = true
  queue.enqueue(starting_vertex)

  # While the queue is not empty:
  while queue.read
    current_vertex = queue.dequeue
    puts current_vertex.value
    current_vertex.adjacent_vertices.each do |adjacent_vertex|
      if !visited_vertices[adjacent_vertex.value]
        visited_vertices[adjacent_vertex.value] = true
        queue.enqueue(adjacent_vertex)
      end
    end
  end
end

class Queue
  attr_accessor  :data

  def initialize
    @data = []
  end

  def push(element)
    @data.shift
  end

  def pop
    @data.pop
  end
end


# In breadth-first search, you'll notice taht we first traverse all Alice's immediate connections. We then spiral outward and gradualy move farther and farter from Alice.

# With depth first search, though, we immediatley move as far away from Alice as we possibly can, until we're forced to return to her.

# This difference between depth-first seaerch and breadth-first search is the key to knowing which one to use when.

# DFS VS. BFS

# Usually, one of the main factors in determing which algorithm to use is the nature of the graph that you're searching, and what you're searching for.

# The key here is that breadth first search traverses all the vertices closest to the starting vertx before moving further away. Depth first search, on the other hand, immediately movees as far away from the starting vertex as it can. Only when the search hits a dead end does it return back to the starting vertex.

# The question to always ask, then, is whether we want to stay close to the starting vertex during our search, or do we specifically wnat to move far away.

# Breadth first search is ideal for moving far away quickly.





# The efficiency of Graph Search