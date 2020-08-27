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


def has_cycle_length(head)
	fast = head
	slow = head
	while fast != nil && fast.nxt != nil
		fast = fast.nxt.nxt
		slow = slow.nxt
		if fast == slow
			return cycle_length(slow)
		end
	end
	return 0
end

def start_node_cycle(head)
	cycle_length = has_cycle_length(head)
	return false if cycle_length == 0

	slow = head
	fast = head
	cycle_length.times do |a|
		fast = fast.nxt
	end

	while slow != fast
		slow = slow.nxt
		fast = fast.nxt
	end

	return slow.val
end

def cycle_length(node)
	current = node
	length = 0
	while true
		current = current.nxt
		length += 1
		if current == node
			break
		end
	end
	length
end

puts start_node_cycle(head)

head.nxt.nxt.nxt.nxt.nxt = head.nxt.nxt
puts start_node_cycle(head)
