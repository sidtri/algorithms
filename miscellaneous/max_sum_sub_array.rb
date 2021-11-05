def max_sum_subarray(array)
	max_sum = window_sum = array[0]

	array.each do |element|
		window_sum = [element, window_sum + element].max
		max_sum = [max_sum, window_sum].max
	end

	max_sum
end

puts max_sum_subarray([-1, 20, -2, -9, 32, 1,2])
puts max_sum_subarray([1, -2,-9,3,2,4,5])

# Assumptions
# - sub array should be continous