# two pointers
def remove_duplicates(arr)
	starter = 0
	ender = 1
	current_element = arr[starter]
	while ender < arr.length
		if arr[ender] == current_element
			ender += 1
		else
			arr[starter + 1] = arr[ender]
			starter += 1
			ender += 1
			current_element = arr[starter]
		end
	end
	arr.slice(0,starter + 1)
end

print remove_duplicates([1,2,3,3,3,6,9,9])
print remove_duplicates([2,2,2,11])
