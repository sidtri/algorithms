def three_no_sum(arr, sum)
	arr = arr.sort
	left_pointer = 0
	right_pointer = arr.length - 1

	output = []
	while right_pointer - left_pointer != 0
		des = sum - (arr[left_pointer] + arr[right_pointer])
		if arr.include?(des)
			output = [arr[left_pointer], des, arr[right_pointer]]
		end
		if des > arr[left_pointer]
			right_pointer -= 1
		else
			left_pointer += 1
		end
	end
	output
end

print three_no_sum([12, 3, 1,2, -6, 5, -8, 6], 3)