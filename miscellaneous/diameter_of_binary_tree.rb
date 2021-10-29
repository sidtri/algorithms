# Definition for a binary tree node.
class Treenode
    attr_accessor :val, :left, :right
    def initialize(val = 0, left = nil, right = nil)
        @val = val
        @left = left
        @right = right
    end
end
# @param {TreeNode} root
# @return {Integer}
class Diameter
    def initialize(node)
        @node = node
        @diameter = 0
    end

    def calculate
        traverse(@node)
        [0, @diameter - 1].max
    end

    def traverse(node)
        return 0 if node.nil?
        return 1 if node.left.nil? && node.right.nil? 

        left = traverse(node.left)
        right = traverse(node.right)

        @diameter = [@diameter, left + right + 1].max

        [left, right].max + 1
    end
end

root = Treenode.new(1)
root.left = Treenode.new(2)
root.right = Treenode.new(3)
root.left.left = Treenode.new(4)
root.left.right = Treenode.new(5)
print Diameter.new(root).calculate

