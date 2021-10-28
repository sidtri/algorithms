def count_subset_sum(array, total, index=0, sum=0, count=0)
	return count += 1 if sum == total
	return count if index >= array.length

	currentEl = array[index]

	c1 = count_subset_sum(array, total, index+1, sum + currentEl, count)	
	c2 = count_subset_sum(array, total, index+1, sum, count)

	return c1 + c2
end


print(count_subset_sum([1,1,2,3],4))