def find_minimum(arr)
	min = arr[0]
	
	arr.each do |a|
		min = a if a < min
	end
	min
end

print(find_minimum([9,2,3,6]))