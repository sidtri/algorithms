require 'pry'
class Treenode
  attr_accessor :val, :left, :right
  def initialize(val)
  	@val = val
  	@left, @right = [nil, nil]
  end
end


class Paths
	attr_accessor :current_path, :all_paths
	def initialize(node, sum)
		@all_paths = []
		@current_path = []
		@node = node
		@sum = sum
	end

	def result
		process_all_paths(@node, @sum)
		all_paths
	end
	
	def process_all_paths(node, sum)
		return false if node.nil?

		current_path.append(node.val)

		if node.left.nil? && node.right.nil? && (sum - node.val) == 0
			@all_paths.append(current_path.dup)		
		else
			process_all_paths(node.left, sum - node.val)
			process_all_paths(node.right, sum - node.val)
		end
		current_path.pop
	end
end

root = Treenode.new(12)
root.left = Treenode.new(7)
root.right = Treenode.new(1)
root.left.left = Treenode.new(9)
root.right.left = Treenode.new(10)
root.right.right = Treenode.new(5)
root.left.left.left = Treenode.new(3)


print Paths.new(root, 18).result