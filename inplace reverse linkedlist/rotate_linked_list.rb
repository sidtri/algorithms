require 'pry'
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

class Rotator
	attr_accessor :head, :k, :circleComplete

	def initialize(node, k)
		@head = node
		@k = k
		@circleComplete = false
	end

	def nxt(node)
		unless node.nxt
			@circleComplete = true
			head
		else
			node.nxt
		end
	end

	def execute()
		current = head

		nxt_count = 0
		smpl = 1
		sublistHead = current
		sublistTail = nil
		while true
			prev = current
			current = nxt(current)

			if nxt_count == k
				if circleComplete
					secondPartHead = sublistHead.nxt
					sublistHead.nxt = nil
					prev.nxt = head
					break
				else
					sublistHead = nxt(sublistHead)
				end
			end

			if nxt_count != k
				nxt_count += 1
			end
			smpl += 1
		end
		secondPartHead
	end
end

print Rotator.new(head, 6).execute()