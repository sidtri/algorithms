require 'rb_heap'
require 'pry'

class MyArr
	def initialize(array)
		@array = array
	end

	def <(a)
		sum < a.sum
	end

	def array
		@array
	end

	def sum
		return @sum if defined?(@sum)
		@sum = @array.inject(&:+)
	end
end
def k_pairs_with_largest_sums(k, nums1, nums2)
	heap = Heap.new(:<)

	([nums1.length, k].min).times do |i|
		[nums2.length, k].min.times do |j|
			if heap.size < k
				heap.add(MyArr.new([nums1[i], nums2[j]]))
			end

			if heap.peak.sum < (nums1[i] + nums2[j]) 
				heap.pop
				heap.add(MyArr.new([nums1[i], nums2[j]]))
			end
		end
	end

	heap.to_a.collect(&:array)
end

print(k_pairs_with_largest_sums(3, [9,8,2], [6,3,1]))
puts ""
print(k_pairs_with_largest_sums(3, [5,2,1], [2,-1]))