def two_number_sum(arr, sum)
	start = 0
	hasher = {}
	output  = []
	(0..(arr.length-1)).each do |ender|
		des = sum - arr[ender]
		if arr.include?(des)
			output = [arr[ender], des]
		end
	end

	output
end

print two_number_sum([3,5,-4, 8, 11, 1, -1, 6], 10)