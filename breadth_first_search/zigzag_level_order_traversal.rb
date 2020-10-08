require 'pry'
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

def zigzag_traversal(root)
	return [] unless root

	result = []
	leftToRight= true
	current_level_nodes = [root]

	while current_level_nodes.length > 0
		if leftToRight
			values = current_level_nodes.collect(&:val)
		else
			values = []
			current_level_nodes.each{|a| values.unshift(a.val)}
		end
		result.push(values)

		current_level_nodes = current_level_nodes.collect(&:children).flatten
		leftToRight = !leftToRight
	end
	return result
end

root = Treenode.new(12)
root.left = Treenode.new(7)
root.right = Treenode.new(1)
root.left.left = Treenode.new(9)
root.right.left = Treenode.new(10)
root.right.right = Treenode.new(5)
root.right.left.left = Treenode.new(20)
root.right.left.right = Treenode.new(17)

print zigzag_traversal(root)