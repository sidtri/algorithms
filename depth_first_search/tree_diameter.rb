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
		@total_sum = 0
	end

	def result
		collect_longest_paths_sum(@node)
		@total_sum
	end
	
	def collect_longest_paths_sum(node)
		return 0 if node.nil?
		return 1 if node.left.nil? && node.right.nil?

		left = collect_longest_paths_sum(node.left)
		right = collect_longest_paths_sum(node.right)

		loop_sum = left + right + 1

		@total_sum = [loop_sum, @total_sum].max

		[left, right].max + 1
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
root2.right.left = Treenode.new(5)
root2.right.right = Treenode.new(6)
root2.right.left.left = Treenode.new(7)
root2.right.left.right = Treenode.new(8)
root2.right.right.left = Treenode.new(9)
root2.right.left.right.left = Treenode.new(10)
root2.right.right.left.left = Treenode.new(11)
print Paths.new(root2).result