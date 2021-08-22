require 'rb_heap'
require 'pry'

def sum_of_elements(arr, k1, k2)
	heap = Heap.new(:<)

	arr.each do |a|
		heap.add(a)
	end

	k1.times do 
		heap.pop
	end

	sum = 0
	(k2-k1-1).times do
		sum += heap.pop
	end

	sum
end

print(sum_of_elements([1,3,12,5,15,11], 3, 6))