# Route Between Nodess
# Given a directed graph, design an algorithm to find out whether there is a route between two nodes.

class Node
  def initialize(value)
    @value = value
    @children = []
  end

  attr_accessor :children, :marked
end

class Graph
  def initialize
    @nodes = []
  end

  attr_accessor :nodes
end

class Queue
  def initialize
    @data = []
  end

  def enqueue(element)
    @data << element
  end

  def pop
    @data.shift
  end
end

def route_between_nodes?(source, target)
  queue = Queue.new
  queue.enqueue(source)

  loop do
    current_node = queue.pop
    return false if current_node == nil
    return true if current_node == target
  end

  if source.children.include?(node2)
    return true
  else

  end

end

node0 = Node.new(0)
node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)
node4 = Node.new(4)
node5 = Node.new(5)
node6 = Node.new(6)

node0.children << node1
node1.children << node2
node2.children << node0
node3.children << node2
node4.children << node6
node5.children << node4
node6.children << node5

graph = Graph.new
graph.nodes << node0 << node1 << node2 << node3 << node4 << node5 << node6

p route_between_nodes?(node1, node2)
p route_between_nodes?(node1, node0)