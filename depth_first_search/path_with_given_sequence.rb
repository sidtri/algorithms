require 'pry'
class Treenode
  attr_accessor :val, :left, :right
  def initialize(val)
  	@val = val
  	@left, @right = [nil, nil]
  end
end


class Paths
	def initialize(node, sequence)
		@node = node
		@sequence = sequence
	end

	def result
		path_with_given_sequence(@node, @sequence)
	end
	
	def path_with_given_sequence(node, sequence)
		return false if node.nil? || sequence.nil?

		current_element = sequence.shift

		return false unless node.val == current_element
		return true if sequence.empty? && node.left.nil? && node.right.nil?

		path_with_given_sequence(node.left, sequence.dup) || path_with_given_sequence(node.right, sequence.dup)
	end
end

root = Treenode.new(9)
root.left = Treenode.new(5)
root.right = Treenode.new(4)
root.left.left = Treenode.new(2)
root.left.right = Treenode.new(9)
root.right.left = Treenode.new(2)

print Paths.new(root, [9,5,9]).result
