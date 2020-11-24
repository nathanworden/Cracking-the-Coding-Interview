# Imagine a stack of plates. If the stack gets too high, it might topple. Therefore, in real life we would likely start a new stack when the previous stack exceeds some threshold. Implement a data structure SetOfStacks that mimics this. SetOfStacks should be composed of serval stacks and should create a new stack once the previous one exceeeds capacity. SetOfStacks.push() and SetOfStacks.pop() should behave identically to a single stack (that is, pop() should return the same values as it would if there was just a single stack)


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

  def length
    @data.length
  end
end


class StackOfPlates
  attr_reader :threshold, :data
  attr_accessor :data, :stack

  def initialize(threshold)
    @data = []
    @stack = Stack.new
    @threshold = threshold
  end

  def push(element)
    if stack.length == threshold
      data << stack
      self.stack = Stack.new
    end
    self.stack.push(element)
  end

  def pop
    if stack.empty?
      self.stack = data.pop
    end
    self.stack.pop
  end

  def popAt(index)
    popped_stack_idx = index / threshold
    data[popped_stack_idx].pop
    while data.length - 1 < popped_stack_idx
      data[popped_stack_idx].push(data[popped_stack_idx + 1].shift)
      popped_stack_idx += 1
    end
    temp_stack = Stack.new
    while !stack.empty?
      temp_stack.push(stack.pop)
    end
    data[popped_stack_idx].push(temp_stack.pop)
    while !temp_stack.empty?
      stack.push(temp_stack.pop)
    end
    p data
    stack
  end
end

plates = StackOfPlates.new(3)
plates.push(4)
plates.push(5)
plates.push(1)
plates.push(9)
plates.push(9)
plates.push(9) #
plates.push(23)
plates.push(24)
plates.push(25)

p plates
puts
p plates.popAt(5)

