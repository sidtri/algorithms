# find the duplicates and return along with missing element
def find_corrupt_pair(array)
	i, num = 0, array.length

	while i < num
		j = array[i] - 1
		if array[i] != array[j]
			temp = array[i]
			array[i] = array[j]
			array[j] = temp
		else
			i += 1
		end
	end

	corrupt = nil
	array.each.with_index do |element, index|
		next if index +1 == element
		corrupt = [element, index+1]
	end
	corrupt
end

print find_corrupt_pair([3,1,2,5,2]) # [2,4]
puts ""
print find_corrupt_pair([3,1,2,3,6,4]) # [3,5]