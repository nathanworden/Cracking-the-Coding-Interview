# An animal shelter, which holds only dogs and cats, operates on a strictly "first in, first out" basis. People must adopt either the "oldest" based on arrival time of all the animals at the shelter, or they can select whether they would prefer a dog or a cat (and will receive the oldest animal of that type.) They cannot select which specific animal they would like. Create the data structures to main tain this system and implement operations such as enqueue, dequeueAny, dequeueDog, and dequeueCat. You may use the built in linked List data structure.

# Create two queues
# enqueue and dequeueAny work like a normal queue
# dequeueDog and dequeu cat are special:
    # deque
    # If the animal is the one desired. Stop
    # If it is not, enqueue into the second queue
    # Continue until you find the first animal you want
    # Save the animal in a return variable.
    # Finish up moving the rest of queue1 to queue2
    # Swap the names of queue1 and queue2




class Dog
  attr_reader :type
  def initialize
    @type = "dog"
  end
end

class Cat
  attr_reader :type
  def initialize
    @type = "cat"
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
    @data[0]
  end

  def empty?
    @data.empty?
  end

  def <<(element)
    self.push(element)
  end
end


 
class AnimalShelter
  attr_accessor :queue1, :queue2
  def initialize
    @queue1 = Queue.new
    @queue2 = Queue.new
  end

  def enqueue(animal)
    self.queue1 << animal
  end

  def dequeue_any
    queue1.pop
  end

  def dequeue(type)
    return dequeue_any if queue1.read.type == type
    current_animal = queue1.pop
    while current_animal.type != type
      queue2 << current_animal
      current_animal = queue1.pop 
    end
    output = current_animal
    while !queue1.empty?
      queue2 << queue1.pop
    end
    self.queue1, self.queue2 = queue2, queue1
    output
  end

  def dequeueDog
    self.dequeue("dog")
  end

  def dequeueCat
    self.dequeue("cat")
  end
end

shelter = AnimalShelter.new

dog1 = Dog.new()
dog2 = Dog.new()
cat1 = Cat.new()
cat2 = Cat.new()

shelter.enqueue(dog1)
shelter.enqueue(dog2)
shelter.enqueue(cat1)
shelter.enqueue(cat2)

shelter.dequeueDog
shelter.dequeueCat
shelter.dequeue_any

p shelter

