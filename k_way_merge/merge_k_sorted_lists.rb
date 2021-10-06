require 'pry'
require 'rb_heap'
class MyArr
	def initialize(array)
		@array = array.each
		@val
	end

	def next
		@val = @array.next
	rescue StopIteration
		@val = nil
	end

	def val
		@val
	end

	def <(a)
		val < a.val
	end
end
def merge_sorted_arrays(*arrays)
	heap = Heap.new(:<)
	output = []

	arrays = arrays.collect { |ar| MyArr.new(ar) }
	arrays.each { |my_arr| my_arr.next; heap.add(my_arr) }

	previousArr = nil
	currentArr = nil

	while heap.size > 0
		previousArr = heap.pop

		output << previousArr.val

		previousArr.next
		currentArr = previousArr

		if currentArr.val
			heap.add(currentArr)
		end
	end

	output
end
print(merge_sorted_arrays([2,6,8], [3,6,7], [1,3,4]))