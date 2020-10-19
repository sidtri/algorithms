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
	end

	def result
		collect_paths_sum(@node)
	end
	
	def collect_paths_sum(node, sum=0)
		return 0 if node.nil?

		# current_path.append(node.val)
		sum = sum * 10 + node.val

		return sum if node.left.nil? && node.right.nil?

		collect_paths_sum(node.left, sum) + collect_paths_sum(node.right, sum)
	end
end

root = Treenode.new(1)
root.left = Treenode.new(7)
root.right = Treenode.new(9)
root.right.left = Treenode.new(2)
root.right.right = Treenode.new(9)

print Paths.new(root).result
puts ""

root2 = Treenode.new(1)
root2.left = Treenode.new(0)
root2.right = Treenode.new(1)
root2.left.left = Treenode.new(1)
root2.right.left = Treenode.new(6)
root2.right.right = Treenode.new(5)


print Paths.new(root2).result