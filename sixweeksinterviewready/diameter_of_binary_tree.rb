# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right, :length_left, :length_right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
        @length_left = 0
        @length_right = 0
    end
end
# @param {TreeNode} root
# @return {Integer}
def diameter_of_binary_tree(root)
	compute(root)
end

def compute(root)

	root.length_left = compute(root.left) if root.left
	root.length_right = compute(root.right) if root.rights
end