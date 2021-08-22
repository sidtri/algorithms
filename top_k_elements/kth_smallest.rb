require 'rb_heap'
require 'pry'
def kth_smallest(array, k)
	heap = Heap.new(:>)

	array[0..(k-1)].each do |a|
		heap.add(a)
	end

	array[(k-1)..-1].each do |a|
		if heap.peak > a
			heap.pop
			heap.add(a)
		end
	end

	heap.peak
end

print kth_smallest([1, 5, 12, 2, 11, 5], 2)