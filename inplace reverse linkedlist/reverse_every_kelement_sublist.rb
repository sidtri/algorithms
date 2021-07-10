class Node
	attr_accessor :nxt, :val
	def initialize(val, nxt=nil)
		@val = val
		@nxt=nxt
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
head.nxt.nxt.nxt.nxt.nxt = Node.new(6)
head.nxt.nxt.nxt.nxt.nxt.nxt = Node.new(7)
head.nxt.nxt.nxt.nxt.nxt.nxt.nxt = Node.new(8)
head.nxt.nxt.nxt.nxt.nxt.nxt.nxt.nxt = Node.new(9)



def reverse_everyk(head, k)
	curr = head
	last_node_of_previous_part = nil

	while true
		i = 0
		prev = nil
		last_node_of_sublist = curr
		while i < k
			nxt = curr.nxt
			curr.nxt = prev
			prev = curr
			curr = nxt
			i += 1
		end
		if last_node_of_previous_part
			last_node_of_previous_part.nxt = prev
		else
			head = prev
		end
		last_node_of_previous_part = last_node_of_sublist
		break unless curr
	end
	head
end


print reverse_everyk(head, 3)