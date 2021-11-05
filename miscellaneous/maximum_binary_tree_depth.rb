# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end
end
# @param {TreeNode} root
# @return {Integer}
def max_depth(node)
	return 0 unless node

	left_depth = 1 + max_depth(node.left)
	right_depth = 1 + max_depth(node.right)

	return [left_depth, right_depth].max
end


head = TreeNode.new(3)
head.left = TreeNode.new(9)
head.right = TreeNode.new(20)
head.right.left = TreeNode.new(15)
head.right.right = TreeNode.new(7)

print(max_depth(head))