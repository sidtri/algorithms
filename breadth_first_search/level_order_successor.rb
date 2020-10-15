require 'pry'
class Treenode
	attr_accessor :val, :left, :right
	def initialize(val)
		@val = val
		@left = nil
		@right = nil
	end
end

def find_successor(node, selector)
	queue = [node]
	prev = nil
	curr = nil
	output = nil

	while !queue.empty?
		current_node = queue.pop
		curr = current_node.val

		if left = current_node.left
			queue.prepend(left)
		end

		if right = current_node.right
			queue.prepend(right)
		end

		if prev == selector
			output = curr
			break
		end
		prev = curr
	end

	output
end


root = Treenode.new(12)
root.left = Treenode.new(7)
root.right = Treenode.new(1)
root.left.left = Treenode.new(9)
root.right.left = Treenode.new(10)
root.right.right = Treenode.new(5)

print find_successor(root, 12)
puts ""
print find_successor(root, 9)

# root.right.left.left = Treenode.new(20)
# root.right.left.right = Treenode.new(17)
