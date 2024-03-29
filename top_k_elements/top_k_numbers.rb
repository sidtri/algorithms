# gem install rb_heap
require 'rb_heap'
require 'pry'

def top_k_numbers(array, k)
	heap = Heap.new(:<)		

	array[0..(k-1)].each do |a|
		heap.add(a)
	end

	array[(k-1)..-1].each do |a|
		if a > heap.peak
			heap.pop
			heap.add(a)
		end
	end

	heap.to_a
end

print top_k_numbers([3,1,5,12,2,11], 3)