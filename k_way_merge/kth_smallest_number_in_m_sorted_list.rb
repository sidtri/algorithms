require 'rb_heap'
require 'pry'

class MyArr
	def initialize(a)
		@array = a.each
	end

	def next
		@val = @array.next
	rescue StopIteration
		@val = nil
	end

	def <(a)
		val < a.val
	end

	def val
		@val
	end
end

def kth_smallest(k, *arrays)
	heap = Heap.new(:<)
	output = []

	arrays = arrays.collect {|a| MyArr.new(a) }
	arrays.each {|ar| ar.next; heap.add(ar) }

	while output.length < k
		previousArr = heap.pop
		output << previousArr.val

		previousArr.next
		currentArr = previousArr

		if currentArr.val
			heap.add(currentArr)
		end
	end
	output[-1]
end

print(kth_smallest(5, [2,6,8], [3,6,7], [1,3,4]))
puts ""
print(kth_smallest(3, [5,8,9], [1,7]))