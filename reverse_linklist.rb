require 'pry'
class Node
	attr_accessor :nxt, :val
	def initialize(val, nxt=nil)
		@val = val
		@nxt = nxt
	end

	def to_s
		print val
		print "->"
		node = self
		while node = node.nxt
			print node.val
			print "->"
		end

		nil
	end
end

head = Node.new(2)
head.nxt = Node.new(4)
head.nxt.nxt = Node.new(6)
head.nxt.nxt.nxt = Node.new(7)
head.nxt.nxt.nxt.nxt = Node.new(8)
head.nxt.nxt.nxt.nxt.nxt = Node.new(9)
head.nxt.nxt.nxt.nxt.nxt.nxt = Node.new(5)
head.nxt.nxt.nxt.nxt.nxt.nxt.nxt = Node.new(9)

def find_reverse(head)

  c,last_element = reverse(head)
  c.nxt = nil
  last_element
end

def reverse(head)
	return [head, head] unless head.nxt

	base, last_element = reverse(head.nxt)

	base.nxt = head
	[head, last_element]
end

print find_reverse(head)