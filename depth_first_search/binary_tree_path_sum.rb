class Treenode
  attr_accessor :val, :left, :right
  def initialize(val)
  	@val = val
  	@left, @right = [nil, nil]
  end
end

def has_path(node, sum)
	return false if node.nil?

	if node.left.nil? && node.right.nil?
		return (node.val - sum) == 0
	end

	return has_path(node.left, sum - node.val) || has_path(node.right, sum - node.val)
end

root = Treenode.new(12)
root.left = Treenode.new(7)
root.right = Treenode.new(1)
root.left.left = Treenode.new(9)
root.right.left = Treenode.new(10)
root.right.right = Treenode.new(5)
root.left.left.left = Treenode.new(3)


print has_path(root, 18)