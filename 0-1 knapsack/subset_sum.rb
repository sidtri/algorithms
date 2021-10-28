def subset_sum(array, sum, index=0)
	if sum == 0
		return true
	end

	if array.length == 0 or (index >= array.length)
		return false
	end

	currentEl = array[index]

	if(subset_sum(array, sum - currentEl, index + 1))
		return true
	end

	subset_sum(array, sum, index + 1)
end

print(subset_sum([1,2,3,7], 6))
print(subset_sum([1,2,7,1,5], 10))
print(subset_sum([1,3,4, 8], 6))