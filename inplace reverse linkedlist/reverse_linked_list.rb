class Node
	attr_accessor :nxt, :val
	def initialize(val, nxt=nil)
		@val = val
		@nxt = nxt
	end

	def to_s
		linked_strings = @nxt ? @nxt.to_s : "null"
		"#{@val} -> #{linked_strings}"
	end
end

head = Node.new(2)
head.nxt = Node.new(4)
head.nxt.nxt = Node.new(6)
head.nxt.nxt.nxt = Node.new(8)
head.nxt.nxt.nxt.nxt = Node.new(9)

def reverse_list(node)
	prev, curr, nxt = nil, node, nil

	while curr != nil
		nxt = curr.nxt
		curr.nxt = prev
		prev = curr
		curr = nxt
	end

	prev
end

print reverse_list(head)