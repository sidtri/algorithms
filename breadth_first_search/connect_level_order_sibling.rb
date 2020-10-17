require 'pry'
class Treenode
	attr_accessor :val, :left, :right, :next
	def initialize(val)
		@val = val
		@left, @right, @next = [nil, nil, nil]
	end

	def children
		[left, right].compact
	end
end


def connect_level_order_sibling(node)
	current_level_nodes = [node]

	while !current_level_nodes.empty?
		current_level_nodes.each_with_index {|node, index| 
			if index < current_level_nodes.length - 1
			  node.next = current_level_nodes[index + 1]
			end }
		current_level_nodes = current_level_nodes.collect(&:children).flatten
	end
	node
end



root = Treenode.new(12)
root.left = Treenode.new(7)
root.right = Treenode.new(1)
root.left.left = Treenode.new(9)
root.right.left = Treenode.new(10)
root.right.right = Treenode.new(5)

print connect_level_order_sibling(root)
