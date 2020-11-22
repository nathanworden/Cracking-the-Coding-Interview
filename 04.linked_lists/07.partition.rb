
# Problem
#  Partition: Write code to partition a linked list around a value x, such that all nodes less than x come before all nodes greater than or equal to x. If x is contained within the list, the values of x only need to be after elements less than x. The partition element x can appear anywhere in the "right partition", it does not need to appear between the left and right partitions

# Example
# Input: 3, 5, 8, 5, 10, 2, 1   [partition = 5]
# Output 3, 1, 2, 10, 5, 5, 8



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

  def to_s
    current_node = first_node
    while current_node
      p current_node.data
      current_node = current_node.next_node
    end
  end
end

def partition_list(list, partition_num)
  require 'pry'
  # binding.pry
  current_node = list.first_node
  previous_node = current_node
  bigger_list = LinkedList.new()
  while current_node
    if current_node.data >= partition_num
      previous_node.next_node = current_node.next_node
      next_node = current_node.next_node
      bigger_list.add_to_front(current_node)
      current_node = next_node
    else
      previous_node = current_node
      current_node = current_node.next_node
    end
  end
  list.last_node.next_node = bigger_list.first_node
end

node1 = Node.new(3)
node2 = Node.new(5)
node3 = Node.new(8)
node4 = Node.new(5)
node5 = Node.new(10)
node6 = Node.new(2)
node7 = Node.new(1)

node1.next_node = node2
node2.next_node = node3
node3.next_node = node4
node4.next_node = node5
node5.next_node = node6
node6.next_node = node7

list = LinkedList.new(node1)
partition_list(list, 5)
puts list
