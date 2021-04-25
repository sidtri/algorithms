def pair_with_target_sum(arr, target_sum)
	left, right = 0, (arr.length - 1)

	while left < right
		window_sum = arr[left] + arr[right]
		if window_sum == target_sum
			return [arr[left], arr[right]]
		end

		if window_sum < target_sum
			left += 1
		else
			right -= 1
		end
	end

	return [-1, -1]
end

print pair_with_target_sum([1,2,3,4,6], 4)

print pair_with_target_sum([1,2,3,4,6], 6)

print pair_with_target_sum([1,2,3,4,6], 20)

