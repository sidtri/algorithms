require 'rb_heap'
def connect_ropes(array)
	minHeap = Heap.new(:<)

	array.each {|a| minHeap.add(a) }

	result = 0

	while minHeap.peak
		a = minHeap.pop
		break unless minHeap.peak
		temp = a + minHeap.pop
		result += temp
		minHeap.add(temp)
	end

	return result
end

print(connect_ropes([1,3,11,5]))
puts ""
print(connect_ropes([3,4,5,6]))
puts ""
print(connect_ropes([1,3,11,5,2]))

