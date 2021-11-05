# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(node)
  slow, fast = node, node&.next

	while slow && fast
    slow = slow.next
		fast = fast.next&.next

		return true if fast == slow
	end

	return false
end

head = ListNode.new(3)
head.next = ListNode.new(2)
head.next.next = ListNode.new(0)
head.next.next.next = ListNode.new(4)
head.next.next.next.next = ListNode.new(4)
head.next.next.next.next.next = head.next

# Assumptions
# > linkedlist may or may not have any cycles
# > nodes might be empty or one and only one node.
# > node values might be same , so we should compare the object only.

print(hasCycle(head))