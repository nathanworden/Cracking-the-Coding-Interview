class Node
  def initialize(data)
    @data = data
  end

  attr_accessor :next_node
  attr_reader :data
end


class LinkedList
  attr_accessor :first_node
  def initialize(first_node)
    @first_node = first_node
  end

  def read(index)
    current_node = first_node
    current_index = 0

    while current_index < index do
      current_node = current_node.next_node
      current_index += 1
      return nil unless current_node
    end
    current_node.data
  end

  def index_of(value)
    current_node = first_node
    current_index = 0

    loop do
      if current_node.data == value
        return current_index
      end
      current_node = current_node.next_node
      current_index += 1
    end while current_index
  end

  def insert_at_index(index, value)
    new_node = Node.new(value)
    if index == 0
      new_node.next_node = first_node
      self.first_node = new_node
      return
    end
    current_node = first_node
    current_index = 0
    while current_index < (index - 1) do
      current_node = current_node.next_node
      current_index += 1
    end
    new_node.next_node = current_node.next_node
    current_node.next_node = new_node
  end

  def delete_at_index(index)
    if index == 0
      self.first_node = first_node.next_node
      return
    end
    current_node = first_node
    current_index = 0
    while current_index < (index - 1) do
      current_node = current_node.next_node
      current_index += 1
    end
    node_after_deleted_node = current_node.next_node.next_node
    current_node.next_node = node_after_deleted_node
  end

  def print
    current_node = first_node
    loop do
      p current_node.data
      current_node = current_node.next_node
      break if current_node == nil
    end
  end
end

# Loop Detection
# Given a circular linked list, implement an algorithm that returns the node at the beginning of the loop
# Defintion
# Circular Linked list: a (corrupt) linked lis in which a node's next pionter points to an earlier node, so as to make a loop in the linked list
# Example
# Input A, B, C, D, E, C
# Output: C

#  Algorithm
# Iterate through Linked list, storing objectIds in a hash table. When an identical objectId appears again, return that node


def loop_detection(list)
  hsh = {}
  current_node = list.first_node
  while !hsh[current_node.object_id]
    hsh[current_node.object_id] = true
    current_node = current_node.next_node
  end
  current_node.data
end

nodeA = Node.new('A')
nodeB = Node.new('B')
nodeC = Node.new('C')
nodeD = Node.new('D')
nodeE = Node.new('E')

nodeA.next_node = nodeB
nodeB.next_node = nodeC
nodeC.next_node = nodeD
nodeD.next_node = nodeE
nodeE.next_node = nodeC

list = LinkedList.new(nodeA)

p loop_detection(list) # => nodeC

