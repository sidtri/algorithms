require 'pry'
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
head.nxt.nxt.nxt = Node.new(7)
head.nxt.nxt.nxt.nxt = Node.new(8)
head.nxt.nxt.nxt.nxt.nxt = Node.new(9)
head.nxt.nxt.nxt.nxt.nxt.nxt = Node.new(5)
head.nxt.nxt.nxt.nxt.nxt.nxt.nxt = Node.new(2)

def rearrange(list)
	slow = list
	fast = list

	while fast != nil && fast.nxt != nil
		slow = slow.nxt
		fast = fast.nxt.nxt
	end

	reversed = find_reverse(slow)
	slow.nxt = nil

	ll = Node.new(nil)
	current = ll
	while list != nil && reversed != nil
		current.nxt = list
		list = list.nxt
		current.nxt.nxt = reversed
		reversed = reversed.nxt
		current = current.nxt.nxt
	end
	current.nxt = nil
	output = ""
	ll = ll.nxt
	while ll != nil
		output += ll.val.to_s
		output += " ->"
		ll = ll.nxt
	end
	output
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

print rearrange(head)