# Implement an algorithm to delete a node in the middle (i.e. any node by the first and last node, not necessarily the exact middle) of a singly linked list, given only access to that node

# Example
# Input:  the c node from the linked list a -> b -> c -> d -> e -> f
# Result: noting is retured but the new linked list looks like this: a -> b -> d -> e -> f

class Node 
  attr_accessor :data, :next_node
  def initialize(data)
    @data = data
  end
end

class LinkedList
  attr_accessor :head
  def initialize(head)
    @head = head
  end

  def delete_this(node)
    current_node = head
    previous_node = nil
    while current_node.data != node.data
      previous_node = current_node
      current_node = current_node.next_node
    end
    previous_node.next_node = current_node.next_node
  end

  def to_s
    current_node = head
    while current_node
      p current_node.data
      current_node = current_node.next_node
    end
  end
end

node1 = Node.new("a")
node2 = Node.new("b")
node3 = Node.new("c")
node4 = Node.new("d")
node5 = Node.new("e")
node6 = Node.new("f")

node1.next_node = node2
node2.next_node = node3
node3.next_node = node4
node4.next_node = node5
node5.next_node = node6

list = LinkedList.new(node1)
puts list
list.delete_this(node3)
puts 
puts list

