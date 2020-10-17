class Treenode
	attr_accessor :val, :left, :right
	def initialize(val)
		@val = val
		@left, @right = [nil, nil]
	end

	def children
		[@left, @right].compact
	end
end


def right_view(node)
	return [] unless node

	result = []
	current_level_nodes = [node]
	while !current_level_nodes.empty?
		result << current_level_nodes.last.val
		current_level_nodes = current_level_nodes.collect(&:children).flatten
	end
	return result
end

root = Treenode.new(12)
root.left = Treenode.new(7)
root.right = Treenode.new(1)
root.left.left = Treenode.new(9)
root.right.left = Treenode.new(10)
root.right.right = Treenode.new(5)
root.left.left.left = Treenode.new(3)


print right_view(root)