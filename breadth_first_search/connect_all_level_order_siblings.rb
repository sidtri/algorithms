class Treenode
	attr_accessor :val, :left, :right, :next
	def initialize(val)
		@val = val
		@left, @right, @next = [nil, nil, nil]
	end

	def children
		[@left, @right].compact
	end
end

def connect_all_level_order_sibling(node)
	current_nodes = [node]
	prev = nil

	while !current_nodes.empty?
		current_nodes.each {|node| prev ? (prev.next = node; prev = node) : prev = node }
		current_nodes = current_nodes.collect(&:children).flatten
	end

	node
end

root = Treenode.new(12)
root.left = Treenode.new(7)
root.right = Treenode.new(1)
root.left.left = Treenode.new(9)
root.right.left = Treenode.new(10)
root.right.right = Treenode.new(5)

print connect_all_level_order_sibling(root)
