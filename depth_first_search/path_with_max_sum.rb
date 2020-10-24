require 'pry'
class Treenode
  attr_accessor :val, :left, :right
  def initialize(val)
  	@val = val
  	@left, @right = [nil, nil]
  end
end


class Paths
	def initialize(node)
		@node = node
		@max_sum = 0
	end

	def result
		path_with_max_sum(@node)
		@max_sum
	end
	
	def path_with_max_sum(node)
		return 0 if node.nil?
		return node.val if node.left.nil? && node.right.nil?

		left = path_with_max_sum(node.left)
		right = path_with_max_sum(node.right)

		@max_sum = [@max_sum, left + right + node.val].max

		[left, right].max + node.val
	end
end

root = Treenode.new(1)
root.left = Treenode.new(2)
root.right = Treenode.new(3)
root.left.left = Treenode.new(4)
root.right.left = Treenode.new(5)
root.right.right = Treenode.new(6)
print Paths.new(root).result
puts ""

root2 = Treenode.new(1)
root2.left = Treenode.new(2)
root2.right = Treenode.new(3)
root2.left.left = Treenode.new(1)
root2.left.right = Treenode.new(3)
root2.right.left = Treenode.new(5)
root2.right.right = Treenode.new(6)
root2.right.left.left = Treenode.new(7)
root2.right.left.right = Treenode.new(8)
root2.right.right.left = Treenode.new(9)
print Paths.new(root2).result