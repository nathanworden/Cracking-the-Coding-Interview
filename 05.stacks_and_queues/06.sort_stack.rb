# Write a program to sort a stack such that the smallest items are on the top. You can use an additional temporary stack, but yo umay not copy the elements into any other data structure (such as an array). The stack supports the following operations: push, pop, peek, and isEmpty


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

def sort_stack(stack1)
  stack2 = Stack.new
  stack2.push(stack1.pop)

  while !stack1.empty?
    buffer = stack1.pop
    if stack2.empty?
      stack2.push(buffer)
      next
    end

    while buffer < stack2.read
      if stack2.empty?
        stack2.push(buffer)
        break
      end
      stack1.push(stack2.pop)
    end
    stack2.push(buffer)
  end
  while !stack2.empty?
    stack1.push(stack2.pop)
  end
  # stack1
end

stack = Stack.new
stack.push(5)
stack.push(9)
stack.push(2)
stack.push(8)
stack.push(1)
stack.push(6)

sort_stack(stack)
p stack
# [1, 2, 5, 6, 8, 9]

