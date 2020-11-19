# Implement a linked list Yo


class Node
  attr_accessor :data, :next_node, :previous_node

  def initialize(data)
    @data = data
  end
end

class LinkedList
  attr_accessor :head

  def initialize(head)
    @head = head
  end

  def read(index)
    current_node = head
    current_index = 0

    while current_index < index do
      current_node = current_node.next_node
      current_index += 1

      return nil unless current_node
    end

    current_node.data
  end
end

node1 = Node.new("once")
node2 = Node.new("upon")
node3 = Node.new("a")
node4 = Node.new("time")

node1.next_node = node2
node2.next_node = node3
node3.next_node = node4

node2.previous_node = node1
node3.previous_node = node2
node4.previous_node = node3

list = LinkedList.new(node1)

p list.read(3)