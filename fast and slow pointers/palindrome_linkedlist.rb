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
head.nxt.nxt.nxt = Node.new(5)
head.nxt.nxt.nxt.nxt = Node.new(2)

def is_pal(list)
	slow = list
	fast = list

	while fast != nil && fast.nxt != nil
		slow = slow.nxt
		fast = fast.nxt.nxt
	end

	reversed = find_reverse(slow)
	slow.nxt = nil

	while reversed != nil
		if list.val != reversed.val
			return false
		end
		list = list.nxt
		reversed = reversed.nxt
	end
	true
end

def find_reverse(head)
	prev = nil
	while head != nil
		nxt = head.nxt
		head.nxt = prev
		prev = head
		head = nxt
	end
	prev
end

print is_pal(head)
