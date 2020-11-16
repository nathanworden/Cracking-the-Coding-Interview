# The following code sums the value of all the nodes in a balanced binary searc tree. What is its runtime?

def sum(node)
  if node.value == nil
    return 0
  end

  return sum(node.left) + node.value + sum(node.right)
end

# Just because its a binary search tree doesn't mean that there is a log in it!

# We can look at this two ways.

# What it means 

# The most straightforward way is to think about what this means. This code touches each node in the tree once and does a constant time amount of work each "touch" (excluding the recursive calls)

# Therefore the runtime will be linear in terms of the number of nodes. If there are N nodes, then the runtime is (n).

# Recursive Pattern. 

# The runtime of a recursive function with multiple branches is typically O(branches^depth). There are two branches at each call, so we're looking at O(2^depth)

