class Treenode
  attr_accessor :val, :left, :right
  def initialize(val)
  	@val = val
  	@left, @right = [nil, nil]
  end
end


class Paths
	def initialize(node, sum)
		@node = node
		@sum = sum
	end

	def result
		path_sum(@node)
	end

	def path_sum(node, current_paths=[])
		return 0 if node.nil?

		current_paths.append(node.val)
		count = 0

		(current_paths).reverse.inject(0) do |sum, i|
			count += 1 if sum == @sum
			i + sum
		end


		count += path_sum(node.left, current_paths)
		count += path_sum(node.right, current_paths)

		current_paths.pop
		count
	end
end

root = Treenode.new(12)
root.left = Treenode.new(7)
root.right = Treenode.new(1)
root.left.left = Treenode.new(4)
root.right.left = Treenode.new(10)
root.right.right = Treenode.new(5)

print Paths.new(root, 11).result