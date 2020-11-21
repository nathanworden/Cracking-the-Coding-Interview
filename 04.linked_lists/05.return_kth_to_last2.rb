Node = Struct.new(:data, :next)

class LinkedList
  attr_reader :head, :tail, :length

  def initialize(values=[])
    @head = values.empty? ? Node.new(nil, nil) : Node.new(values.first, nil)
    @tail = @head
    @length = 1
    values[1..-1].each { |v| append(v) } if values.length > 1
  end

  def append(value)
    if tail.data
      @tail.next = Node.new(value, nil)
      @length += 1
    else
      @tail.data = value
    end
    @tail = @tail.next if @tail.next
  end

  def +(linked_list)
    @tail.next = linked_list.head
    @tail = linked_list.tail
    @length += linked_list.length
    return self
  end

  def to_str
    current = @head
    str = ""
    while current
      str += "#{current.data} "
      current = current.next
    end
    return str.strip
  end
end

def kth_last(linked_list, k)
  # r1 is spaced k-1 nodes ahead of r2
  r1 = linked_list.head
  (k-1).times { r1 = r1.next }
  r2 = linked_list.head

  # when r1 hits the end of the list, the kth should be at r2
  while r1.next
    r1 = r1.next
    r2 = r2.next
  end

  return r2.data
end

list = LinkedList.new(["once", "upon", "a", "time", "there", "was", "a", "boy", "named", "Nathan"])

p list.to_str
p kth_last(list, 2)  # => named