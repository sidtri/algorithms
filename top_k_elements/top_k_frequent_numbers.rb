require 'rb_heap'
require 'pry'
class NumberFrequencyMapper
	attr_accessor :key, :times
	def initialize(key, times)
		@key = key
		@times = times
	end

	def <(a)
		@times < a.times
	end

	def to_s
		@key
	end
end


def top_k_frequent_numbers(array, k)
	hash_map = {}
	array.each do |a| 
		hash_map[a] = hash_map.fetch(a, 0) + 1
	end

	min_heap = Heap.new(:<)

	hash_map.each do |key, val|
		min_heap.add(NumberFrequencyMapper.new(key, val))
		if min_heap.size > k
			min_heap.pop
		end
	end

	min_heap.to_a.collect(&:to_s).reverse
end


print(top_k_frequent_numbers([1,3,5,12,11,12,11], 2))
puts ""
print(top_k_frequent_numbers([5,12,11,3,11], 2))
