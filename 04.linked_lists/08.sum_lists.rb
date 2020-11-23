# You have two numbers represented by a linked list, where each node contains a single digit. The digits are stored in reverse order, such that the 1s digit is at the head of the list. Write a funciton that adds the two numbers and returns the sum as a linked list.

class Node
  def initialize(data)
    @data = data
  end

  attr_accessor :next_node
  attr_reader :data
end


class LinkedList
  attr_accessor :first_node
  def initialize(first_node=nil)
    @first_node = first_node
  end

  def add_to_front(node)
    node.next_node = first_node
    self.first_node = node
  end

  def last_node
    current_node = first_node
    while current_node.next_node
      current_node = current_node.next_node
    end
    current_node
  end

  def reverse
    current_node = first_node
    while current_node.next_node
      
    end
  end

  def all_data
    current_node = first_node
    output = []
    while current_node
      output << current_node.data
      current_node = current_node.next_node
    end
    output
  end

  def to_s
    current_node = first_node
    while current_node
      p current_node.data
      current_node = current_node.next_node
    end
  end
end

def add_lists_reverse(list1, list2)
  num1 = list1.all_data.reverse.join.to_i
  num2 = list2.all_data.reverse.join.to_i
  sum = num1 + num2
  output = LinkedList.new()
  sum = sum.to_s.split('').map do |num|
    Node.new(num)
  end
  sum.each_with_index {|node, idx| output.add_to_front(node)}
  output
end

def add_lists(list1, list2)

end

###
node1 = Node.new(7)
node2 = Node.new(1)
node3 = Node.new(6)

node4 = Node.new(5)
node5 = Node.new(9)
node6 = Node.new(2)

node1.next_node = node2
node2.next_node = node3

node4.next_node = node5
node5.next_node = node6

list1 = LinkedList.new(node1)
list2 = LinkedList.new(node4)

# p add_lists_reverse(list1, list2)

##
node7 = Node.new(6)
node8 = Node.new(1)
node9 = Node.new(7)

node10 = Node.new(2)
node11 = Node.new(9)
node12 = Node.new(5)

node7.next_node = node8
node8.next_node = node9

node10.next_node = node11
node11.next_node = node12

list3 = LinkedList.new(node7)
list4 = LinkedList.new(node10)

puts list3
puts list4
##
