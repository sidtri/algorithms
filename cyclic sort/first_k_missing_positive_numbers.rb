def firstKMissingPositives(array, k)
	i, len = 0, array.length

	while i < len
		j = array[i] - 1
		array[j] = -1 if array[j] == nil && (j >= 0)
		if (j >= 0) && array[i] != array[j]
			array[i], array[j] = array[j], array[i]
		else
			i += 1
		end
	end

	missingPositives = []
	array.each.with_index do |element, i|
		next if i + 1 == element
		array[i] = i+1

		missingPositives << array[i]
	end

	maxValue = array[-1]

	(k - missingPositives.length).times do |a|
		maxValue += 1
		missingPositives << maxValue
	end
	missingPositives[0..(k-1)]
end

print firstKMissingPositives([3,-1,4,5,5], 3)
puts ""
print firstKMissingPositives([2,3,4], 3)
puts ""
print firstKMissingPositives([-2, -3, 4], 2)
