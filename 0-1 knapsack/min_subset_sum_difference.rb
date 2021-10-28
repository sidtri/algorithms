def min_diff(array)
	min_diff_rec(array, 0, 0, 0)
end

def min_diff_rec(array, index, sum1, sum2)
	if(index >= array.length)
		return (sum2 - sum1).abs
	end

	currentEl = array[index]
	s1 = min_diff_rec(array, index + 1, currentEl + sum1, sum2)
	s2 = min_diff_rec(array, index + 1, sum1, sum2 + currentEl)

	return [s1,s2].min
end

print(min_diff([1,2, 3, 9]))
puts ""
print(min_diff([1,2,7,1,5]))					
puts ""
print(min_diff([1,3,100,4]))					

