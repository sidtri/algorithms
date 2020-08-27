class Node
	attr_accessor :nxt, :val
	def initialize(val, nxt=nil)
		@val = val
		@nxt = nxt
	end
end

head = Node.new(2)
head.nxt = Node.new(4)
head.nxt.nxt = Node.new(6)
head.nxt.nxt.nxt = Node.new(4)
head.nxt.nxt.nxt.nxt = Node.new(2)


def has_cycle(head)
	fast = head
	slow = head
	while fast != nil && fast.nxt != nil
		fast = fast.nxt.nxt
		slow = slow.nxt
		if fast == slow
			return true
		end
	end
	return false
end

puts has_cycle(head)

head.nxt.nxt.nxt.nxt.nxt = head.nxt.nxt
puts has_cycle(head)