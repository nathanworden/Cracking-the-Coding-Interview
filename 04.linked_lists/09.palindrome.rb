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

  def last_node
    current_node = first_node
    while current_node.next_node
      current_node = current_node.next_node
    end
    current_node
  end

  def palindrome?
    arr = []
    current_node = first_node
    while current_node
      arr << current_node.data
      current_node = current_node.next_node
    end
    arr == arr.reverse
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

# implement a function to check if a linked list is a palindrome



node1 = Node.new("a")
node2 = Node.new("b")
node3 = Node.new("c")
node4 = Node.new("b")
node5 = Node.new("a")
node6 = Node.new("dohg")


node1.next_node = node2
node2.next_node = node3
node3.next_node = node4
node4.next_node = node5
node5.next_node = node6

list = LinkedList.new(node1)
p list.palindrome?