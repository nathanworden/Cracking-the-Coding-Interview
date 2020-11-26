# Trees and Graphs

# A nice way to understand a tree is with a recursive explanation. A tree is a data structure composed of nodes.

# Each tree has a root node (Actually, this isn't strictly necessary in graph theory, but it's usually how we use trees in programming, and especially programming interviews)

# The root node has zero or more child nodes

# Each child node has zero or more child nodes, and so on

# The tree cannot contain cycles. The nodes may or may not be in a particular order, they could have any data type as values, and they may or may not have links back to their parent nodes.


# Trees vs Binary Trees

# A binary tree is a tree in which each node has up to two children. Not all trees are binary trees. For example, if the root node of a tree has three children, you could call it a ternary tree.

# There are occasions when you might have a tree that is not a binary tree. For example, suppose you were using a tree to represent a bunch of phone numbers. In this case, you wmight use a 10-ary tree, with each node having up to 10 children (one for each digit).

# A node is called a "leaf" node if it has no children.

# Binary Tree vs. BNinary Search Tree

# A binary search tree is a binary tree in which every node fits a specific ordering property: all, left, decendents <= n < all right decendents. This must be true for each node n.

# The definition of a binary search tree can vary slightly with respect to equality. Under some definitions, the tree cannot have duplicate values. In others, the duplicate values will be on the right or can be on either side. All are valid definitions, but you should clarify this with your interviewer.

# Balanced vs. Unbalanced

# While manytrees are balanced, not all are. 

# In Order Traversal: Visit the left branch, then the current node, and finally, the right branch. When performed on a binary search tree, it visits the nodes in ascending order

# Pre-Order Traversal: visit the current node before its child nodes. In a pre-order traversal, the root is always the first node visited.

# Post Order Traversal: Visit the current node after its child nodes. In post-order traversal, the root is always the last node visited

class TreeNode
  attr_accessor :value, :left_node, :right_node
  def initialize(value, left_node=nil, right_node=nil)
    @value = value
    @left_node = left_node
    @right_node = right_node
  end
end

node14 = TreeNode.new(95)
node13 = TreeNode.new(82)
node12 = TreeNode.new(61)
node11 = TreeNode.new(52)
node10 = TreeNode.new(40)
node9 = TreeNode.new(30)
node8 = TreeNode.new(11)
node7 = TreeNode.new(4)
node6 = TreeNode.new(89, node13, node14)
node5 = TreeNode.new(56, node11, node12)
node4 = TreeNode.new(33, node9, node10)
node3 = TreeNode.new(10, node7, node8)
node2 = TreeNode.new(75, node5, node6)
node1 = TreeNode.new(25, node3, node4)
root = TreeNode.new(50, node1, node2)

def in_order_traversal(node)
  if (node != nil)
    in_order_traversal(node.left_node)
    p node.value
    in_order_traversal(node.right_node)
  end
end

def pre_order_traversal(node)
  if (node != nil)
    p node.value
    pre_order_traversal(node.left_node)
    pre_order_traversal(node.right_node)
  end
end

def post_order_traversal(node)
  if (node != nil)
    post_order_traversal(node.left_node)
    post_order_traversal(node.right_node)
    p node.value
  end
end

# in_order_traversal(root) # => Will print out: 4, 10, 11, 25, 30, 33, 40, 50, 52, 56, 61, 75, 82, 89, 95
# pre_order_traversal(root) # => Will print out: 50, 25, 10, 4, 11, 33, 30, 40, 75, 56, 52, 61, 89, 82, 95
post_order_traversal(root) # => Will print out: 4, 11, 10, 30, 40, 33, 25, 52, 61, 56, 82, 95, 89, 75, 50