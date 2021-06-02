require 'pry'
def find_all_missing_numbers(array)
	i, length = 0, array.length

	while i < length
		j = array[i] - 1
		if array[i] != array[j]
			temp = array[j]
			array[j] = array[i]
			array[i] = temp
		else
			i += 1
		end
	end

	missingNumbers = []
	(array.length - 1).times do |index|
		if array[index] != index + 1
			missingNumbers << index + 1
		end
	end

	return missingNumbers
end

print find_all_missing_numbers([2,3,1,8,2,3,5,1])