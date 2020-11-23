# Implementing a Stack

# The stack data structure is precisely what it sounds like: A stack of data. In certain types of problems, it can be favorable to solve data in a stack rather than in an array

# A stack uses LIFO (last in first out) ordering. That is, as a stack of dinner plates, the most recent item added to the stack is the first item removed.

# It uses the following operations:
# pop: remove the top item from the stack
# push(item): Add an item to the top of the stack
# peek(): Return the top of the stack
# IsEmpty(): Return true if and only if the stack is empty

# Unlike an array, a stack does not offer constant-time access to the ith item. However, it does allow constant time adds and removes, as it doesn't require shifting elemetns around

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

class Queue
  def initialize
    @data = []
  end

  def push(element)
    @data << element
  end

  def pop
    @data.shift
  end

  def read
    @data.first
  end
end

stack = Stack.new
