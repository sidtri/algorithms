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


def traverse(node)
	return [] unless node

	result = []
	current_level_nodes = [node]
	while !current_level_nodes.empty?
		result << current_level_nodes.collect(&:val)
		current_level_nodes = current_level_nodes.collect(&:children).flatten
	end
	return result
end

def reverse_traverse(node)
	return [] unless node

	result = []
	current_level_nodes = [node]
	while !current_level_nodes.empty?
		result.unshift(current_level_nodes.collect(&:val))
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


print traverse(root)
puts ""
print reverse_traverse(root)