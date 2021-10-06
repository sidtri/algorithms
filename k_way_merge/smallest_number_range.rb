require 'rb_heap'
require 'pry'
class MyArr
	def initialize(array)
		@array = array.each
	end

	def <(a)
		@val < a.val
	end

	def >(a)
		@val > a.val
	end

	def val
		@val
	end

	def next
		@val = @array.next
	rescue StopIteration
		@val = nil
	end
end

def smallest_number_range(*arrays)
	heap = Heap.new(:<)
	currentMaxNum = -Float::INFINITY
	arrays = arrays.collect {|ar| MyArr.new(ar)}
	arrays.each do |myarr|
		myarr.next
		heap.add(myarr)
		currentMaxNum = [currentMaxNum, myarr.val].max
	end

	range_start, range_end = [heap.peak.val, currentMaxNum]

	while heap.size == arrays.length
		currentElement = heap.pop
		if (range_end - range_start) > (currentMaxNum - currentElement.val)
			range_end = currentMaxNum
			range_start = currentElement.val
		end

		currentElement.next
		nextElement = currentElement
		if nextElement.val
			heap.add(nextElement)
			currentMaxNum = [currentMaxNum, nextElement.val].max
		end
	end

	[range_start, range_end]
end

print(smallest_number_range([1,5,8], [4,12], [7,8,10]))
print(smallest_number_range([1,9], [4,12], [7,10,16]))