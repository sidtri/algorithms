require 'rb_heap'

class DiffObj
	attr_accessor :a, :x
	def initialize(a,x)
		@a = a
		@x = x
	end

	def >(diffobj)
		distance > diffobj.distance 
	end

	def distance
		(x - a).abs
	end
end

def k_closest_numbers(arr, k, x)
	min_heap = Heap.new(:>)

	arr.each do |a|
		min_heap.add(DiffObj.new(a, x))

		if min_heap.size > k
			min_heap.pop
		end
	end

	min_heap.to_a.collect(&:a)
end

print(k_closest_numbers([5,6,7,8,9], 3, 7))
puts ""
print(k_closest_numbers([2,4,5,6,9], 3, 6))
puts ""
print(k_closest_numbers([2,4,5,6,9], 3, 10))
