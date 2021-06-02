require 'pry'
def smallest_missing_positive_number(array)
	i, len = 0, array.length

	while i < len
		j = array[i] - 1

		if j >= 0 && (array[i] != array[j])
			array[i], array[j] = array[j], array[i]
		else
			i += 1
		end
	end

	array.each.with_index do |element, index|
		return index + 1 if index + 1 != array[index]
	end
end

print smallest_missing_positive_number([-3,1,5,4,2])