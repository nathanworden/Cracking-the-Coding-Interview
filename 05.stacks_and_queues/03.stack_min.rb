class Stack
  attr_accessor :min_stack
  
  def initialize
    @data = []
    @min_stack = []
  end

  def push(element)
    if min_stack.empty?
      min_stack << element
    else
      min_stack << element if element < min_stack[-1]
    end
    @data << element
  end

  def pop
    popped = @data.pop
    if popped == min_stack[-1]
      min_stack.pop
    end
  end

  def read
    @data.last
  end

  def empty?
    @data.empty?
  end

  def min
    min_stack[-1]
  end
end

# How would you design a stack which, in addition to push and pop, has a cfunction min which returns the minimum element? Push, pop and min should all operate in O(1) time

stack = Stack.new
stack.push(5)
stack.push(10)
stack.push(2)
stack.push(88)
stack.push(19)
p stack.min_stack
puts
p stack.min
stack.pop
stack.pop
stack.pop
p stack.min_stack