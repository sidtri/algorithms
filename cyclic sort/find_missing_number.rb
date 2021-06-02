def find_missing_number(array)
	i = 0
	while i < array.length
		element = array[i]
		if element < array.length && array[i] != array[element]
			temp = array[i]
			array[i] = array[element] 
			array[element] = temp
		else
			i += 1
		end
	end

	(0..(array.length - 1)).each do |element|
		if array[element] != element
			return element
		end
	end
end

puts find_missing_number([4,0,3,1])
puts find_missing_number([8,3,5,2,4,6,0,1])