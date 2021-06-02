def find_duplicate(array)
	# sort first
	i, length = 0, array.length

	duplicates = []
	while i < array.length
		j = array[i] - 1
		if array[i] != array[j]
			temp = array[j]
			array[j] = array[i]
			array[i] = temp
		else
			duplicates.append(array[i]) if j < i
			i += 1
		end
	end

	duplicates.uniq
end

# puts find_duplicate([2,4,4,3,1])
print find_duplicate([2,1,3,3,5,4])
puts ""
print find_duplicate([1,4,4,3,2,1])
puts ""
print find_duplicate([2,4,1,4,4])
