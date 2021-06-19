# search key index in ascending array which is rotated by some degree.

def search_in_rotated_array(array, key)
	idx = find_rotated_index(array)
	lo, hi = 0, array.length

	# reset indexes to non rotated or rotated array based on index
	if array[-1] >= key
		lo = idx
	else
		hi = idx - 1
	end

	while lo <= hi
		mid = lo + ((hi-lo)/2) # this is same as (lo + hi)/2

		return mid if array[mid] == key

		if array[mid] < key
			lo = mid + 1
		else
			hi = mid - 1
		end
	end

	-1
end

def find_rotated_index(array)
	lo, hi = 0, array.length
	idx = -1
	while lo <= hi
		mid = (lo + hi)/2
		if array[0] > array[mid]
			idx = mid
			hi = mid -1
		else
			lo = mid + 1
		end
	end
	idx
end


print search_in_rotated_array([10,15,1,3,8], 15)
puts ""
print search_in_rotated_array([4, 5, 7, 9, 10, -1, 2], 10)