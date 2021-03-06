class Node
  def initialize(data)
    @data = data
  end

  attr_accessor :next_node, :previous
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

  def remove_duplicates
    hsh = {}
    previous_node = nil
    current_node = first_node
    while current_node
      if hsh[current_node.data]
        previous_node.next_node = current_node.next_node
        current_node = previous_node
      else
        hsh[current_node.data] = true
      end
      previous_node = current_node
      current_node = current_node.next_node
    end
    self.print
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

node1 = Node.new("once")
node2 = Node.new("upon")
node1.next_node = node2

node3 = Node.new("a")
node2.next_node = node3

node4 = Node.new("time")
node3.next_node = node4

node5 = Node.new("once")
node4.next_node = node5

node6 = Node.new("a")
node5.next_node = node6

node7 = Node.new("there")
node6.next_node = node7

node8 = Node.new("was")
node7.next_node = node8

node9 = Node.new("an")
node8.next_node = node9

node10 = Node.new("amazing")
node9.next_node = node10

node11 = Node.new("bear")
node10.next_node = node11

list = LinkedList.new(node1)

# list.print

puts

list.remove_duplicates

# Problem: Write code to remove duplicates from an unsorted linked list

#Iterate through the linked list, storing each value in a hash table. If the current value of a node is already in the hash table, delete it.

