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

head = Node.new(1)
head.nxt = Node.new(2)
head.nxt.nxt = Node.new(3)
head.nxt.nxt.nxt = Node.new(4)
head.nxt.nxt.nxt.nxt = Node.new(5)

def reverse_sub_list(node, start, ender)
	prev, curr, nxt = nil, node, nil
	head = curr
	append = nil
	prpend = nil

	while curr != nil && curr.val != start
		append = curr
		curr = curr.nxt
	end

	cameToEnd = false
	subNode = nil
	subNodeEnder = curr
	while curr != nil && cameToEnd
		nxt = curr.nxt
		curr.nxt = prev
		prev = curr
		curr = nxt
		(subNode = curr; cameToEnd = true) if curr && curr.val == ender
	end

	append.nxt = subNode

	subNodeEnder.nxt = curr

	head
end

print reverse_sub_list(head, 2, 4)