class Node
	attr_accessor :val, :nxt
	def initialize(val)
		@val = val
	end

	def to_s
		return "#{val} -> null" unless nxt

		"#{val} -> #{nxt.to_s}"
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

def subk(head, k, reverse=false)
	if reverse
		subtail = head
	else
		subhead = head
	end

	i = 0
	curr = head
	prev = nil
	nxt = nil
	while i < k
		if reverse
			nxt = curr.nxt
			curr.nxt = prev
			prev = curr
			curr = nxt
		else
			prev = curr
			curr = curr.nxt
		end
		i+=1
	end

	if reverse
		subhead = prev
	else
		subtail = prev
	end

	[subhead, subtail, curr]
end

def reverse_alternate_k(head, k)
	curr = head
	prev = nil
	modified_head = nil

	while curr
		subhead, subtail,curr = subk(curr, k, true)
		unless modified_head
			modified_head = subhead
		else
			prev.nxt = subhead
		end
		subtail.nxt = curr

		subhead, subtail, curr = subk(curr, k, false)
		prev = subtail
	end

	modified_head
end

print reverse_alternate_k(head, 2)