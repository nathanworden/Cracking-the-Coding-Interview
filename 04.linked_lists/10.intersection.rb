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

  def print
    current_node = first_node
    loop do
      p current_node.data
      current_node = current_node.next_node
      break if current_node == nil
    end
  end

  def length
    current_node = first_node
    length = 0
    while current_node
      current_node = current_node.next_node
      length += 1
    end
    length
  end

  def to_s
    current_node = first_node
    loop do
      p current_node
      current_node = current_node.next_node
      break if current_node == nil
    end
  end

  def intersect(other_list)
    this_current_node = first_node
    other_current_node = other_list.first_node
    while this_current_node
      break if this_current_node.object_id == other_current_node.object_id
      this_current_node = this_current_node.next_node
      other_current_node = other_current_node.next_node
    end
    this_current_node
  end
end

def find_intersection(list1, list2)
  length1 = list1.length
  length2 = list2.length

  longer = length1 > length2 ? list1 : list2
  shorter = length1 <= length2 ? list1 : list2


  return "No intersection" if list1.last_node.object_id != list2.last_node.object_id
  diff = (length2 - length1).abs
  longer_start = longer.first_node
  diff.times do |node|
    longer_start = longer_start.next_node
  end
  shorter_start = shorter.first_node

  longer_current = longer_start
  shorter_current = shorter_start
  while longer_current.next_node
    p "longer:#{longer_current.data} shorter: #{shorter_current.data}"
    break if longer_current.object_id == shorter_current.object_id
    longer_current = longer_current.next_node
    shorter_current = shorter_current.next_node
  end
  longer_current
end




# Given two singly linked lists, determine if the two lists intersect. Return the intersecting node. Note that the intersection is defined based on reference, not value. That is, if the kth node of the first linked list is the exact same node (by reference) as the jth node of the second linked list, then they are intersecting.

nodeneg = Node.new('negnode')
node0 = Node.new('preceeding')
node1 = Node.new("a")
node2 = Node.new("b")
node3 = Node.new("c")
node4 = Node.new("d")
node5 = Node.new("e")
node6 = Node.new("f")

nodeneg.next_node = node0
node0.next_node = node1
node1.next_node = node2
node2.next_node = node3
node3.next_node = node4
node4.next_node = node5
node5.next_node = node6

list1 = LinkedList.new(nodeneg)

node7 = Node.new("a")
node8 = Node.new("b")
node9 = Node.new("c")


node7.next_node = node8
node8.next_node = node9
# Node4 is where they intersect: "d"
node9.next_node = node4

list2 = LinkedList.new(node7)

p find_intersection(list1, list2)