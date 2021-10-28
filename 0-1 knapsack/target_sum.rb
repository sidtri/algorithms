def target_sum(array, target, count=0, set=[], index=0)
	if set.inject(&:+) == target
		count += 1
		return count
	end
	return count if index >= array.length

	set = array if set.empty?

	currentEl = array[index]
	s1 = set.dup
	s1[index] = s1[index].abs

	s2 = set.dup
	s2[index] = -s2[index]
	c1 = target_sum(array, target, count, s1, index+1)
	c2 = target_sum(array, target, count, s2, index+1)

	return c1 + c2
end


print(target_sum([1,1,2,3], 1))
puts ""
print(target_sum([1,2,7,1], 9))