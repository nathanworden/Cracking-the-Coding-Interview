# Implement a linked list data structure in ruby

class Node
  attr_accessor :data, :next

  def initialize(data, next)
    @data = value
    @next_node = next
  end 

  def to_s
    "Node with value: #{data}"
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def append(value)
    if @head
      find_tale.next = Node.new(value)
    else
      @head = Node.new(value)
    end
  end

  def find_tale
    node = @head

    return false if !node.next
    return node if node.next while (node = node.next)
  end

  def find(value)
    node = @head
  end
end