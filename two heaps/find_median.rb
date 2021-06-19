require_relative 'heap'

class NumberStream
	attr_accessor :maxHeap, :minHeap
	def initialize
		@maxHeap = Heap.new
		@minHeap = Heap.new(style='min')
	end

	def add_number(num)
		if maxHeap.head == nil || num < maxHeap.head
			maxHeap.add(num)
		else
			minHeap.add(num)
		end

		if maxHeap.count > (minHeap.count + 1)
			minHeap.add(maxHeap.pop)
		elsif maxHeap.count < minHeap.count
			maxHeap.add(minHeap.pop)
		end
	end

	def find_median()
		if maxHeap.count ==  minHeap.count
			(maxHeap.leaf + minHeap.leaf) / 2.0
		else
			maxHeap.leaf
		end
	end
end


stream = NumberStream.new()
stream.add_number(3)
stream.add_number(1)
print stream.find_median() # 2.0
puts ""
stream.add_number(5)
print stream.find_median() # 3.0
puts ""
stream.add_number(4)
print stream.find_median() # 3.5
