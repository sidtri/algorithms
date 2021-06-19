# find index of key from bitonic array (array which increases first and then decrease)

def bitonic_array(array, key)
	max_index = find_max(array)

	idx = binary_search(array[0..max_index], key)
	return idx if idx >= 0
	idx = binary_search(array[max_index+1..-1], key)
	return idx unless idx >= 0
	idx + 1 + max_index 
end

def binary_search(array, key)
	asc = array[0] < array[-1]
	lo, hi = 0, array.length - 1	

	while lo <= hi
		mid = (lo+hi)/2

		return mid if array[mid] == key

		if array[mid] > key
			hi = mid-1 if asc
			lo = mid +1 unless asc
		else
			lo = mid + 1 if asc
			hi = mid - 1 unless asc
		end
	end

	return -1
end

def find_max(array)
	lo, hi = 0, array.length - 1

	while lo <= hi
		return lo if lo == hi

		mid = (lo + hi)/ 2
		if array[mid] > array[mid + 1]
			hi = mid
		else
			lo = mid + 1
		end
	end
end


print bitonic_array([1,3,8,4,3], 4)
puts ""
print bitonic_array([3,8,3,1], 8)
puts ""
print bitonic_array([1,3,8,12], 12)
puts ""
print bitonic_array([10,9,8], 10)