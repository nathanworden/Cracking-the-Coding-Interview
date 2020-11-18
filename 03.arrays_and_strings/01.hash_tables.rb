# Implement a hash table
# https://gist.github.com/arjans/db79d5ba3b644fd41b197a882b2b5ee1#file-hash-rb


# meant to work with strings as keys
require 'pry'

class MyHash
  def initialize(size: 10)
    @size = size
    @hash = Array.new(size)
  end

  attr_accessor :hash

  def insert(key, value)
    i = hashing_function(key)
    @hash[i] ||= []
    if @hash[i].find {|arr| arr.first == key }
      return "Key exists."
    else
      @hash[i] << [key, value]
    end
  end

  def delete(key)
    i = hashing_function(key)
    arr = lookup(key)
    @hash[i].delete(arr)
  end

  def lookup(key)
    i = hashing_function(key)
    if @hash[i]
      @hash[i].find {|arr| arr.first == key }
    else
      nil
    end
  end

  def hashing_function(key)
    key.chars.map(&:ord).reduce(&:*) % @size
  end
end

hsh = MyHash.new()


p hsh.insert('hi', 'abc')
p hsh.insert('dog', 4)
p hsh.insert('hi', 'morning')
p hsh