# Min heaps are in acending order.
# Max heaps are in decending order.

# A min-heap is a complete binary tree (that is, totally filled out other than the rightmost elements on the last level) where each node is smaller than its children. The root, therefore, is the minimum element in the tree.

#  We have two key operations on a min-heap: insert and extract_min

# When we insert into a min-heap, we always start by inserting the element at the bottom. We insert at the rightmost spot so as to maintain the complete tree property.

# Then we "fix the tree" by swapping the new element with its parent, until we find an appropriate spot for the element. We essentially bubble up the minimum element.

# This takes O(log n) time, where n is the number of nodes in the heap.

# Extract Minimum Element

# Finding the minimum element of a min-heap is easy: it's always at the top. The trickier part is how to remove it. (In fact, this isn't that tricky)

# First, we remove the minimum element and sqap it with the last element in the heap (the bottommost, rightmost element). Then, we bubble down this element, swapping it with one of its children until the min-heap property is restored.