class Stack
  def initialize
    @data = []
  end

  def push(element)
    @data << element
  end

  def pop
    @data.pop
  end

  def read
    @data.last
  end

  def empty?
    @data.empty?
  end
end

# Implemtn a MyQueue class which implments a queue using two stacks

# Queue is FIFO

class MyQueue
  attr_accessor :newest, :oldest
  def initialize
    @newest = Stack.new
    @oldest = Stack.new
  end

  def push(element)
    # Element goes in the bottom
    newest.push(element)
  end

  def pop
    # Element comes off the top
    if oldest.empty?
      while !newest.empty?
        oldest.push(newest.pop)
      end
    end
   oldest.pop
  end

  def read
    # Read the top element
  end
end

my_queue = MyQueue.new
my_queue.push(1)
my_queue.push(2)
my_queue.push(3)
my_queue.push(4)
my_queue.push(5)
my_queue.push(6)
my_queue.push(7)
my_queue.push(8)

p my_queue.pop
p my_queue.pop

p my_queue.push(9)

p my_queue.pop

p my_queue.push(10)

p my_queue.pop